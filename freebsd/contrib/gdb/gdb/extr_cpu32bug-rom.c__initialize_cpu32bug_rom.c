
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* to_shortname; char* to_longname; char* to_doc; int to_open; } ;


 int add_target (TYPE_1__*) ;
 int cpu32bug_open ;
 TYPE_1__ cpu32bug_ops ;
 int init_cpu32bug_cmds () ;
 int init_monitor_ops (TYPE_1__*) ;

void
_initialize_cpu32bug_rom (void)
{
  init_cpu32bug_cmds ();
  init_monitor_ops (&cpu32bug_ops);

  cpu32bug_ops.to_shortname = "cpu32bug";
  cpu32bug_ops.to_longname = "CPU32Bug monitor";
  cpu32bug_ops.to_doc = "Debug via the CPU32Bug monitor.\nSpecify the serial device it is connected to (e.g. /dev/ttya).";

  cpu32bug_ops.to_open = cpu32bug_open;

  add_target (&cpu32bug_ops);
}
