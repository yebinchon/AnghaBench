
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ parse_bool_arg (char*,char*) ;
 int set_exceptions_cmd (char*,int) ;
 int set_signals_cmd (char*,int) ;
 int set_task_pause_cmd (char*,int) ;

__attribute__((used)) static void
set_noninvasive_cmd (char *args, int from_tty)
{

  char *inv_args = parse_bool_arg (args, "set noninvasive") ? "off" : "on";

  set_task_pause_cmd (inv_args, from_tty);
  set_signals_cmd (inv_args, from_tty);
  set_exceptions_cmd (inv_args, from_tty);
}
