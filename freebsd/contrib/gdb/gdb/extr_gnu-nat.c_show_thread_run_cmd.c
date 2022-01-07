
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {scalar_t__ run_sc; } ;


 int check_empty (char*,char*) ;
 struct proc* cur_thread () ;
 int printf_unfiltered (char*,int ,char*) ;
 int proc_string (struct proc*) ;

__attribute__((used)) static void
show_thread_run_cmd (char *args, int from_tty)
{
  struct proc *thread = cur_thread ();
  check_empty (args, "show thread run");
  printf_unfiltered ("Thread %s %s allowed to run.",
       proc_string (thread),
       thread->run_sc == 0 ? "is" : "isn't");
}
