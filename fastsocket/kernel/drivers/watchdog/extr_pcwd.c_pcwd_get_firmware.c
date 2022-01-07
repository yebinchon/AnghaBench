
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fw_ver_str; } ;


 int CMD_ISA_VERSION_HUNDRETH ;
 int CMD_ISA_VERSION_INTEGER ;
 int CMD_ISA_VERSION_MINOR ;
 int CMD_ISA_VERSION_TENTH ;
 TYPE_1__ pcwd_private ;
 int send_isa_command (int ) ;
 scalar_t__ set_command_mode () ;
 int sprintf (int ,char*,int,int,int,int) ;
 int strcpy (int ,char*) ;
 int unset_command_mode () ;

__attribute__((used)) static inline void pcwd_get_firmware(void)
{
 int one, ten, hund, minor;

 strcpy(pcwd_private.fw_ver_str, "ERROR");

 if (set_command_mode()) {
  one = send_isa_command(CMD_ISA_VERSION_INTEGER);
  ten = send_isa_command(CMD_ISA_VERSION_TENTH);
  hund = send_isa_command(CMD_ISA_VERSION_HUNDRETH);
  minor = send_isa_command(CMD_ISA_VERSION_MINOR);
  sprintf(pcwd_private.fw_ver_str, "%c.%c%c%c",
     one, ten, hund, minor);
 }
 unset_command_mode();

 return;
}
