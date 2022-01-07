
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* to_shortname; char* to_longname; char* to_doc; int to_open; } ;


 int add_target (TYPE_1__*) ;
 int init_monitor_ops (TYPE_1__*) ;
 int init_ppc_cmds (char*,int *,TYPE_1__*) ;
 int ppcbug_cmds0 ;
 int ppcbug_cmds1 ;
 int ppcbug_open0 ;
 int ppcbug_open1 ;
 TYPE_1__ ppcbug_ops0 ;
 TYPE_1__ ppcbug_ops1 ;

void
_initialize_ppcbug_rom (void)
{
  init_ppc_cmds ("lo 0\r", &ppcbug_cmds0, &ppcbug_ops0);
  init_ppc_cmds ("lo 1\r", &ppcbug_cmds1, &ppcbug_ops1);
  init_monitor_ops (&ppcbug_ops0);

  ppcbug_ops0.to_shortname = "ppcbug";
  ppcbug_ops0.to_longname = "PowerPC PPCBug monitor on port 0";
  ppcbug_ops0.to_doc = "Debug via the PowerPC PPCBug monitor using port 0.\nSpecify the serial device it is connected to (e.g. /dev/ttya).";

  ppcbug_ops0.to_open = ppcbug_open0;

  add_target (&ppcbug_ops0);

  init_monitor_ops (&ppcbug_ops1);

  ppcbug_ops1.to_shortname = "ppcbug1";
  ppcbug_ops1.to_longname = "PowerPC PPCBug monitor on port 1";
  ppcbug_ops1.to_doc = "Debug via the PowerPC PPCBug monitor using port 1.\nSpecify the serial device it is connected to (e.g. /dev/ttya).";

  ppcbug_ops1.to_open = ppcbug_open1;

  add_target (&ppcbug_ops1);
}
