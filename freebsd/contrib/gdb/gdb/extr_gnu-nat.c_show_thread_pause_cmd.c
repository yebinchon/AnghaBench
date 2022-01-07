
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int pause_sc; TYPE_1__* inf; } ;
struct TYPE_2__ {scalar_t__ pause_sc; } ;


 int check_empty (char*,char*) ;
 struct proc* cur_thread () ;
 int printf_unfiltered (char*,int ,char*,char*) ;
 int proc_string (struct proc*) ;

__attribute__((used)) static void
show_thread_pause_cmd (char *args, int from_tty)
{
  struct proc *thread = cur_thread ();
  int sc = thread->pause_sc;
  check_empty (args, "show task pause");
  printf_unfiltered ("Thread %s %s suspended while gdb has control%s.\n",
       proc_string (thread),
       sc ? "is" : "isn't",
       !sc && thread->inf->pause_sc ? " (but the task is)" : "");
}
