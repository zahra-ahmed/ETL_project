CREATE TABLE "state_population" (
    "state" VARCHAR   NOT NULL,
    "population" INTEGER   NOT NULL,
    CONSTRAINT "pk_state_population" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "state_weather" (
    "state" VARCHAR   NOT NULL,
    "avg_min_temp" REAL   NOT NULL,
    "avg_max_temp" REAL   NOT NULL
);

CREATE TABLE "state_smoking" (
    "state" VARCHAR   NOT NULL,
    "smoke_everyday" REAL   NOT NULL,
    "smoke_somedays" REAL   NOT NULL,
    "smoke_former" REAL   NOT NULL,
    "smoke_never" REAL   NOT NULL
);

ALTER TABLE "state_weather" ADD CONSTRAINT "fk_state_weather_state" FOREIGN KEY("state")
REFERENCES "state_population" ("state");

ALTER TABLE "state_smoking" ADD CONSTRAINT "fk_state_smoking_state" FOREIGN KEY("state")
REFERENCES "state_population" ("state");

