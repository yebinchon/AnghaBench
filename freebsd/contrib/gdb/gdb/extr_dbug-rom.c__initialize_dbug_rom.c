
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* to_shortname; char* to_longname; char* to_doc; int to_open; } ;


 int add_target (TYPE_1__*) ;
 int dbug_open ;
 TYPE_1__ dbug_ops ;
 int init_dbug_cmds () ;
 int init_monitor_ops (TYPE_1__*) ;

void
_initialize_dbug_rom (void)
{
  init_dbug_cmds ();
  init_monitor_ops (&dbug_ops);

  dbug_ops.to_shortname = "dbug";
  dbug_ops.to_longname = "dBUG monitor";
  dbug_ops.to_doc = "Debug via the dBUG monitor.\nSpecify the serial device it is connected to (e.g. /dev/ttya).";

  dbug_ops.to_open = dbug_open;

  add_target (&dbug_ops);
}
