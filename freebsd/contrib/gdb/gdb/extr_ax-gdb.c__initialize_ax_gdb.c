
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_cmd (char*,int ,int ,char*,int *) ;
 int agent_command ;
 int class_maintenance ;
 int maintenancelist ;

void
_initialize_ax_gdb (void)
{
  add_cmd ("agent", class_maintenance, agent_command,
    "Translate an expression into remote agent bytecode.",
    &maintenancelist);
}
