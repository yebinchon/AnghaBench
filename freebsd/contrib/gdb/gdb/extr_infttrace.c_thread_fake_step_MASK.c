#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int signal_value; int /*<<< orphan*/  handled; scalar_t__ have_signal; } ;
typedef  TYPE_1__ thread_info ;
typedef  int lwpid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef  int /*<<< orphan*/  TTRACE_ARG_TYPE ;

/* Variables and functions */
 int TARGET_SIGNAL_0 ; 
 int /*<<< orphan*/  TT_LWP_SINGLE ; 
 int /*<<< orphan*/  TT_NIL ; 
 int /*<<< orphan*/  TT_USE_CURRENT_PC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ debug_on ; 
 int doing_fake_step ; 
 int fake_step_tid ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (lwpid_t tid, enum target_signal signal)
{
  thread_info *p;

#ifdef THREAD_DEBUG
  if (debug_on)
    {
      printf ("Doing a fake-step over a bpt, etc. for %d\n", tid);

      if (is_terminated (tid))
	printf ("Why are we continuing a dead thread? (4)\n");
    }
#endif

  if (doing_fake_step)
    FUNC5 ("Step while step already in progress.");

  /* See if there's a saved signal value for this
   * thread to be passed on, but no current signal.
   */
  p = FUNC1 (tid);
  if (p != NULL)
    {
      if (p->have_signal && signal == TARGET_SIGNAL_0)
	{
	  /* Pass on a saved signal.
	   */
	  signal = p->signal_value;
	}

      p->have_signal = 0;
    }

  if (!p->handled)
    FUNC5 ("Internal error: continuing unhandled thread.");

  FUNC0 (TT_LWP_SINGLE,
	       tid,
	       TT_USE_CURRENT_PC,
	       (TTRACE_ARG_TYPE) FUNC4 (signal),
	       TT_NIL);

  /* Do bookkeeping so "call_ttrace_wait" knows it has to wait
   * for this thread only, and clear any saved signal info.
   */
  doing_fake_step = 1;
  fake_step_tid = tid;

}