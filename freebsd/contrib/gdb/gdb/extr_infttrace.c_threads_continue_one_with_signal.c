
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ have_signal; int handled; scalar_t__ terminated; } ;
typedef TYPE_1__ thread_info ;
typedef int lwpid_t ;
typedef int TTRACE_ARG_TYPE ;


 int TT_LWP_CONTINUE ;
 int TT_NIL ;
 int TT_USE_CURRENT_PC ;
 int add_tthread (int,int ) ;
 int call_ttrace (int ,int ,int ,int ,int ) ;
 scalar_t__ debug_on ;
 TYPE_1__* find_thread_info (int ) ;
 int get_pid_for (int ) ;
 int map_from_gdb_tid (int ) ;
 int printf (char*) ;
 scalar_t__ target_signal_to_host (int) ;
 int warning (char*) ;

__attribute__((used)) static void
threads_continue_one_with_signal (lwpid_t gdb_tid, int signal)
{
  thread_info *p;
  lwpid_t real_tid;
  int real_pid;






  real_tid = map_from_gdb_tid (gdb_tid);
  real_pid = get_pid_for (real_tid);

  p = find_thread_info (real_tid);
  if (((void*)0) == p)
    {
      add_tthread (real_pid, real_tid);
    }







  if (!p->handled)
    warning ("Internal error: continuing unhandled thread.");

  p->have_signal = 0;

  call_ttrace (TT_LWP_CONTINUE,
        gdb_tid,
        TT_USE_CURRENT_PC,
        (TTRACE_ARG_TYPE) target_signal_to_host (signal),
        TT_NIL);
}
