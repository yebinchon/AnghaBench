
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* to_shortname; char* to_longname; char* to_doc; int to_open; } ;


 int abug_open ;
 TYPE_1__ abug_ops ;
 int add_target (TYPE_1__*) ;
 int init_abug_cmds () ;
 int init_monitor_ops (TYPE_1__*) ;

void
_initialize_abug_rom (void)
{
  init_abug_cmds ();
  init_monitor_ops (&abug_ops);

  abug_ops.to_shortname = "abug";
  abug_ops.to_longname = "ABug monitor";
  abug_ops.to_doc = "Debug via the ABug monitor.\nSpecify the serial device it is connected to (e.g. /dev/ttya).";

  abug_ops.to_open = abug_open;

  add_target (&abug_ops);
}
