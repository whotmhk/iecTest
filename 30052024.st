PROGRAM MemoryAddress
  VAR
    MIED1_line_cb_3 AT %QX00.0 : BOOL;
    (* MIED1_CO_line_cb_3 AT %QX00.1 : BOOL; *)
    MIED1_bus_voltage_17_phsA AT %MD0 : REAL;
    MIED1_bus_voltage_17_phsB AT %MD1 : REAL;
    MIED1_bus_voltage_17_phsC AT %MD2 : REAL;
    MIED1_line_current_4_phsA AT %MD100 : REAL;
    MIED1_line_current_4_phsB AT %MD101 : REAL;
    MIED1_line_current_4_phsC AT %MD102 : REAL;

    SIED2_line_cb_10 AT %QX00.2 : BOOL;
    (* SIED2_CO_line_cb_10 AT %QX00.3 : BOOL; *)
    SIED2_bus_voltage_20_phsA AT %MD3 : REAL;
    SIED2_bus_voltage_20_phsB AT %MD4 : REAL;
    SIED2_bus_voltage_20_phsC AT %MD5 : REAL;
    SIED2_line_current_14_phsA AT %MD103 : REAL;
    SIED2_line_current_14_phsB AT %MD104 : REAL;
    SIED2_line_current_14_phsC AT %MD105 : REAL;

    SIED3_line_cb_10 AT %QX00.2 : BOOL;
    (* IED3_CO_line_cb_10 AT %QX00.3 : BOOL; *)
    IED3_bus_voltage_20_phsA AT %MD3 : REAL;
    IED3_bus_voltage_20_phsB AT %MD4 : REAL;
    IED3_bus_voltage_20_phsC AT %MD5 : REAL;
    IED3_line_current_14_phsA AT %MD103 : REAL;
    IED3_line_current_14_phsB AT %MD104 : REAL;
    IED3_line_current_14_phsC AT %MD105 : REAL;
  END_VAR
  VAR
    Alarmvalue : REAL := 1.1;
    Tripvalue : REAL := 1.2;
    Open : BOOL := false;
    Closed : BOOL := true;
  END_VAR

  IF MIED1_bus_voltage_17_phsA > Alarmvalue THEN
        MIED1_line_cb_3 := Open;
        (* MIED1_CO_line_cb_3 := Open; *)
  END_IF;
END_PROGRAM
