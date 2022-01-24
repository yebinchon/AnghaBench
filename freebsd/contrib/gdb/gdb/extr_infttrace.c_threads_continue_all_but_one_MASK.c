#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int tts_flags; scalar_t__ tts_event; } ;
typedef  TYPE_1__ ttstate_t ;
struct TYPE_9__ {int handled; scalar_t__ tid; int seen; int signal_value; scalar_t__ stepping_mode; scalar_t__ have_signal; struct TYPE_9__* next; scalar_t__ terminated; } ;
typedef  TYPE_2__ thread_info ;
typedef  scalar_t__ lwpid_t ;
struct TYPE_10__ {TYPE_2__* head; } ;
typedef  int /*<<< orphan*/  TTRACE_ARG_TYPE ;

/* Variables and functions */
 scalar_t__ DO_STEP ; 
 scalar_t__ TTEVT_NONE ; 
 int TTS_STATEMASK ; 
 int TTS_WASSUSPENDED ; 
 int /*<<< orphan*/  TT_LWP_CONTINUE ; 
 int /*<<< orphan*/  TT_LWP_SINGLE ; 
 int /*<<< orphan*/  TT_NIL ; 
 int /*<<< orphan*/  TT_USE_CURRENT_PC ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ debug_on ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__* FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int,TYPE_1__*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_3__ thread_head ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15 (lwpid_t gdb_tid, int signal)
{
  thread_info *p;
  int thread_signal;
  lwpid_t real_tid;
  lwpid_t scan_tid;
  ttstate_t state;
  int real_pid;

#ifdef THREAD_DEBUG
  if (debug_on)
    printf ("Using loop over threads to step/resume with signals\n");
#endif

  /* First update the thread list.
   */
  FUNC10 ();
  real_tid = FUNC8 (gdb_tid);
  real_pid = FUNC4 (real_tid);

  scan_tid = FUNC6 (real_pid, &state);
  while (0 != scan_tid)
    {

#ifdef THREAD_DEBUG
      /* FIX: later should check state is stopped;
       * state.tts_flags & TTS_STATEMASK == TTS_WASSUSPENDED
       */
      if (debug_on)
 	if ((state.tts_flags & TTS_STATEMASK) != TTS_WASSUSPENDED)
	  printf ("About to continue non-stopped thread %d\n", scan_tid);
#endif

      p = FUNC3 (scan_tid);
      if (NULL == p)
	{
	  FUNC0 (real_pid, scan_tid);
	  p = FUNC3 (scan_tid);

	  /* This is either a newly-created thread or the
	   * result of a fork; in either case there's no
	   * actual event to worry about.
	   */
	  p->handled = 1;

	  if (state.tts_event != TTEVT_NONE)
	    {
	      /* Oops, do need to worry!
	       */
	      FUNC14 ("Unexpected thread with \"%s\" event.",
		       FUNC5 (state.tts_event));
	    }
	}
      else if (scan_tid != p->tid)
	FUNC2 ("Bad data in thread database.");

#ifdef THREAD_DEBUG
      if (debug_on)
	if (p->terminated)
	  printf ("Why are we continuing a dead thread?\n");
#endif

      p->seen = 1;

      scan_tid = FUNC7 (real_pid, &state);
    }

  /* Remove unseen threads.
   */
  FUNC13 ();

  /* Now run down the thread list and continue or step.
   */
  for (p = thread_head.head; p; p = p->next)
    {

      /* Sanity check.
       */
      FUNC12 (p);

      /* Pass the correct signals along.
       */
      if (p->have_signal)
	{
	  thread_signal = p->signal_value;
	  p->have_signal = 0;
	}
      else
	thread_signal = 0;

      if (p->tid != real_tid)
	{
	  /*
	   * Not the thread of interest, so continue it
	   * as the user expects.
	   */
	  if (p->stepping_mode == DO_STEP)
	    {
	      /* Just step this thread.
	       */
	      FUNC1 (
			    TT_LWP_SINGLE,
			    p->tid,
			    TT_USE_CURRENT_PC,
			    (TTRACE_ARG_TYPE) FUNC11 (signal),
			    TT_NIL);
	    }
	  else
	    {
	      /* Regular continue (default case).
	       */
	      FUNC1 (
			    TT_LWP_CONTINUE,
			    p->tid,
			    TT_USE_CURRENT_PC,
		    (TTRACE_ARG_TYPE) FUNC11 (thread_signal),
			    TT_NIL);
	    }
	}
      else
	{
	  /* Step the thread of interest.
	   */
	  FUNC1 (
			TT_LWP_SINGLE,
			real_tid,
			TT_USE_CURRENT_PC,
			(TTRACE_ARG_TYPE) FUNC11 (signal),
			TT_NIL);
	}
    }				/* Loop over threads */
}