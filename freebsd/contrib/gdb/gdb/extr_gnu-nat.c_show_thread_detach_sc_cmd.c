
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int detach_sc; } ;


 int check_empty (char*,char*) ;
 struct proc* cur_thread () ;
 int printf_unfiltered (char*,int ,int ) ;
 int proc_string (struct proc*) ;

__attribute__((used)) static void
show_thread_detach_sc_cmd (char *args, int from_tty)
{
  struct proc *thread = cur_thread ();
  check_empty (args, "show thread detach-suspend-count");
  printf_unfiltered ("Thread %s will be left with a suspend count"
       " of %d when detaching.\n",
       proc_string (thread),
       thread->detach_sc);
}
