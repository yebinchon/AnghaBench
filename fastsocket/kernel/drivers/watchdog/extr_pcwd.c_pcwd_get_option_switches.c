
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ISA_SWITCH_SETTINGS ;
 int send_isa_command (int ) ;
 scalar_t__ set_command_mode () ;
 int unset_command_mode () ;

__attribute__((used)) static inline int pcwd_get_option_switches(void)
{
 int option_switches = 0;

 if (set_command_mode()) {

  option_switches = send_isa_command(CMD_ISA_SWITCH_SETTINGS);
 }

 unset_command_mode();
 return option_switches;
}
