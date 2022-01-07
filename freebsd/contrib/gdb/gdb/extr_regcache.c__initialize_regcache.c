
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEPRECATED_REGISTER_GDBARCH_SWAP (int ) ;
 int add_cmd (char*,int ,int ,char*,int *) ;
 int add_com (char*,int ,int ,char*) ;
 int build_regcache ;
 int class_maintenance ;
 int current_regcache ;
 int deprecated_register_gdbarch_swap (int *,int ,int ) ;
 int deprecated_register_valid ;
 int deprecated_registers ;
 int init_regcache_descr ;
 int maintenance_print_cooked_registers ;
 int maintenance_print_raw_registers ;
 int maintenance_print_register_groups ;
 int maintenance_print_registers ;
 int maintenanceprintlist ;
 int pid_to_ptid (int) ;
 int reg_flush_command ;
 int regcache_descr_handle ;
 int register_gdbarch_data (int ) ;
 int registers_ptid ;

void
_initialize_regcache (void)
{
  regcache_descr_handle = register_gdbarch_data (init_regcache_descr);
  DEPRECATED_REGISTER_GDBARCH_SWAP (current_regcache);
  DEPRECATED_REGISTER_GDBARCH_SWAP (deprecated_registers);
  DEPRECATED_REGISTER_GDBARCH_SWAP (deprecated_register_valid);
  deprecated_register_gdbarch_swap (((void*)0), 0, build_regcache);

  add_com ("flushregs", class_maintenance, reg_flush_command,
    "Force gdb to flush its register cache (maintainer command)");



  registers_ptid = pid_to_ptid (-1);

  add_cmd ("registers", class_maintenance,
    maintenance_print_registers,
    "Print the internal register configuration.Takes an optional file parameter.",

    &maintenanceprintlist);
  add_cmd ("raw-registers", class_maintenance,
    maintenance_print_raw_registers,
    "Print the internal register configuration including raw values.Takes an optional file parameter.",

    &maintenanceprintlist);
  add_cmd ("cooked-registers", class_maintenance,
    maintenance_print_cooked_registers,
    "Print the internal register configuration including cooked values.Takes an optional file parameter.",

    &maintenanceprintlist);
  add_cmd ("register-groups", class_maintenance,
    maintenance_print_register_groups,
    "Print the internal register configuration including each register's group.Takes an optional file parameter.",

    &maintenanceprintlist);

}
