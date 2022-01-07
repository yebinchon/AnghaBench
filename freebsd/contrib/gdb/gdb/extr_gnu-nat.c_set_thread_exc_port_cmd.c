
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;


 struct proc* cur_thread () ;
 int error (char*) ;
 int parse_and_eval_address (char*) ;
 int steal_exc_port (struct proc*,int ) ;

__attribute__((used)) static void
set_thread_exc_port_cmd (char *args, int from_tty)
{
  struct proc *thread = cur_thread ();
  if (!args)
    error ("No argument to \"set thread exception-port\" command.");
  steal_exc_port (thread, parse_and_eval_address (args));
}
