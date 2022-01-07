
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signal_value; int handled; scalar_t__ have_signal; } ;
typedef TYPE_1__ thread_info ;
typedef int lwpid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef int TTRACE_ARG_TYPE ;


 int TARGET_SIGNAL_0 ;
 int TT_LWP_SINGLE ;
 int TT_NIL ;
 int TT_USE_CURRENT_PC ;
 int call_ttrace (int ,int,int ,int ,int ) ;
 scalar_t__ debug_on ;
 int doing_fake_step ;
 int fake_step_tid ;
 TYPE_1__* find_thread_info (int) ;
 scalar_t__ is_terminated (int) ;
 int printf (char*,...) ;
 scalar_t__ target_signal_to_host (int) ;
 int warning (char*) ;

__attribute__((used)) static void
thread_fake_step (lwpid_t tid, enum target_signal signal)
{
  thread_info *p;
  if (doing_fake_step)
    warning ("Step while step already in progress.");




  p = find_thread_info (tid);
  if (p != ((void*)0))
    {
      if (p->have_signal && signal == TARGET_SIGNAL_0)
 {


   signal = p->signal_value;
 }

      p->have_signal = 0;
    }

  if (!p->handled)
    warning ("Internal error: continuing unhandled thread.");

  call_ttrace (TT_LWP_SINGLE,
        tid,
        TT_USE_CURRENT_PC,
        (TTRACE_ARG_TYPE) target_signal_to_host (signal),
        TT_NIL);




  doing_fake_step = 1;
  fake_step_tid = tid;

}
