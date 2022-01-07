
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {int task; } ;


 struct inf* cur_inf () ;
 int error (char*) ;
 int parse_and_eval_address (char*) ;
 int steal_exc_port (int ,int ) ;

__attribute__((used)) static void
set_task_exc_port_cmd (char *args, int from_tty)
{
  struct inf *inf = cur_inf ();
  if (!args)
    error ("No argument to \"set task exception-port\" command.");
  steal_exc_port (inf->task, parse_and_eval_address (args));
}
