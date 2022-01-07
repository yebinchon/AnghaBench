
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int run_sc; } ;


 struct proc* cur_thread () ;
 scalar_t__ parse_bool_arg (char*,char*) ;

__attribute__((used)) static void
set_thread_run_cmd (char *args, int from_tty)
{
  struct proc *thread = cur_thread ();
  thread->run_sc = parse_bool_arg (args, "set thread run") ? 0 : 1;
}
