#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ttwopt_t ;
struct TYPE_8__ {int tts_pid; int tts_lwpid; int /*<<< orphan*/  tts_event; } ;
typedef  TYPE_1__ ttstate_t ;
struct TYPE_9__ {int have_state; int /*<<< orphan*/  last_stop_state; } ;
typedef  TYPE_2__ thread_info ;
typedef  int lwpid_t ;

/* Variables and functions */
 scalar_t__ FAKE_STEPPING ; 
 scalar_t__ FORKING ; 
 scalar_t__ RUNNING ; 
 scalar_t__ STOPPED ; 
 int /*<<< orphan*/  TTEVT_NONE ; 
 scalar_t__ VFORKING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ,TYPE_1__*,size_t) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ debug_on ; 
 scalar_t__ doing_fake_step ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int fake_step_tid ; 
 TYPE_2__* FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (int) ; 
 scalar_t__ more_events_left ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ process_state ; 
 int /*<<< orphan*/  FUNC10 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static int
FUNC14 (int pid, ttwopt_t option, ttstate_t *tsp, size_t tsp_size)
{
  /* This holds the actual, for-real, true process ID.
   */
  static int real_pid;

  /* As an argument to ttrace_wait, zero pid
   * means "Any process", and zero tid means
   * "Any thread of the specified process".
   */
  int wait_pid = 0;
  lwpid_t wait_tid = 0;
  lwpid_t real_tid;

  int ttw_status = 0;		/* To be returned */

  thread_info *tinfo = NULL;

  if (pid != 0)
    {
      /* Unexpected case.
       */
#ifdef THREAD_DEBUG
      if (debug_on)
	printf ("TW: Pid to wait on is %d\n", pid);
#endif

      if (!FUNC0 ())
	FUNC4 ("No thread records for ttrace call w. specific pid");

      /* OK, now the task is to translate the incoming tid into
       * a pid/tid pair.
       */
      real_tid = FUNC8 (pid);
      real_pid = FUNC6 (real_tid);
#ifdef THREAD_DEBUG
      if (debug_on)
	printf ("==TW: real pid %d, real tid %d\n", real_pid, real_tid);
#endif
    }


  /* Sanity checks and set-up.
   *                             Process State
   *
   *                        Stopped   Running    Fake-step  (v)Fork
   *                      \________________________________________
   *                      |
   *  No buffered events  |  error     wait       wait      wait
   *                      |
   *  Buffered events     |  debuffer  error      wait      debuffer (?)
   *
   */
  if (more_events_left == 0)
    {

      if (process_state == RUNNING)
	{
	  /* OK--normal call of ttrace_wait with no buffered events.
	   */
	  ;
	}
      else if (process_state == FAKE_STEPPING)
	{
	  /* Ok--call of ttrace_wait to support
	   * fake stepping with no buffered events.
	   *
	   * But we better be fake-stepping!
	   */
	  if (!doing_fake_step)
	    {
	      FUNC13 ("Inconsistent thread state.");
	    }
	}
      else if ((process_state == FORKING)
	       || (process_state == VFORKING))
	{
	  /* Ok--there are two processes, so waiting
	   * for the second while the first is stopped
	   * is ok.  Handled bits stay as they were.
	   */
	  ;
	}
      else if (process_state == STOPPED)
	{
	  FUNC13 ("Process not running at wait call.");
	}
      else
	/* No known state.
	 */
	FUNC13 ("Inconsistent process state.");
    }

  else
    {
      /* More events left
       */
      if (process_state == STOPPED)
	{
	  /* OK--buffered events being unbuffered.
	   */
	  ;
	}
      else if (process_state == RUNNING)
	{
	  /* An error--shouldn't have buffered events
	   * when running.
	   */
	  FUNC13 ("Trying to continue with buffered events:");
	}
      else if (process_state == FAKE_STEPPING)
	{
	  /*
	   * Better be fake-stepping!
	   */
	  if (!doing_fake_step)
	    {
	      FUNC13 ("Losing buffered thread events!\n");
	    }
	}
      else if ((process_state == FORKING)
	       || (process_state == VFORKING))
	{
	  /* Ok--there are two processes, so waiting
	   * for the second while the first is stopped
	   * is ok.  Handled bits stay as they were.
	   */
	  ;
	}
      else
	FUNC13 ("Process in unknown state with buffered events.");
    }

  /* Sometimes we have to wait for a particular thread
   * (if we're stepping over a bpt).  In that case, we
   * _know_ it's going to complete the single-step we
   * asked for (because we're only doing the step under
   * certain very well-understood circumstances), so it
   * can't block.
   */
  if (doing_fake_step)
    {
      wait_tid = fake_step_tid;
      wait_pid = FUNC6 (fake_step_tid);

#ifdef WAIT_BUFFER_DEBUG
      if (debug_on)
	printf ("Doing a wait after a fake-step for %d, pid %d\n",
		wait_tid, wait_pid);
#endif
    }

  if (more_events_left == 0	/* No buffered events, need real ones. */
      || process_state != STOPPED)
    {
      /* If there are no buffered events, and so we need
       * real ones, or if we are FORKING, VFORKING, 
       * FAKE_STEPPING or RUNNING, and thus have to do
       * a real wait, then do a real wait.
       */

#ifdef WAIT_BUFFER_DEBUG
      /* Normal case... */
      if (debug_on)
	printf ("TW: do it for real; pid %d, tid %d\n", wait_pid, wait_tid);
#endif

      /* The actual wait call.
       */
      ttw_status = FUNC1 (wait_pid, wait_tid, option, tsp, tsp_size);

      /* Note that the routines we'll call will be using "call_real_ttrace",
       * not "call_ttrace", and thus need the real pid rather than the pseudo-tid
       * the rest of the world uses (which is actually the tid).
       */
      real_pid = tsp->tts_pid;

      /* For most events: Stop the world!

       * It's sometimes not safe to stop all threads of a process.
       * Sometimes it's not even safe to ask for the thread state
       * of a process!
       */
      if (FUNC2 (real_pid, tsp->tts_event))
	{
	  /* If we're really only stepping a single thread, then don't
	   * try to stop all the others -- we only do this single-stepping
	   * business when all others were already stopped...and the stop
	   * would mess up other threads' events.
	   *
	   * Similiarly, if there are other threads with events,
	   * don't do the stop.
	   */
	  if (!doing_fake_step)
	    {
	      if (more_events_left > 0)
		FUNC13 ("Internal error in stopping process");

	      FUNC12 (real_pid);

	      /* At this point, we could scan and update_thread_list(),
	       * and only use the local list for the rest of the
	       * module! We'd get rid of the scans in the various
	       * continue routines (adding one in attach).  It'd
	       * be great--UPGRADE ME!
	       */
	    }
	}

#ifdef PARANOIA
      else if (debug_on)
	{
	  if (more_events_left > 0)
	    printf ("== Can't stop process; more events!\n");
	  else
	    printf ("== Can't stop process!\n");
	}
#endif

      process_state = STOPPED;

#ifdef WAIT_BUFFER_DEBUG
      if (debug_on)
	printf ("Process set to STOPPED\n");
#endif
    }

  else
    {
      /* Fake a call to ttrace_wait.  The process must be
       * STOPPED, as we aren't going to do any wait.
       */
#ifdef WAIT_BUFFER_DEBUG
      if (debug_on)
	printf ("TW: fake it\n");
#endif

      if (process_state != STOPPED)
	{
	  FUNC13 ("Process not stopped at wait call, in state '%s'.\n",
		   FUNC7 (process_state));
	}

      if (doing_fake_step)
	FUNC4 ("Internal error in stepping over breakpoint");

      ttw_status = 0;		/* Faking it is always successful! */
    }				/* End of fake or not? if */

  /* Pick an event to pass to our caller.  Be paranoid.
   */
  if (!FUNC10 (real_pid, tsp))
    FUNC13 ("Can't find event, using previous event.");

  else if (tsp->tts_event == TTEVT_NONE)
    FUNC13 ("Internal error: no thread has a real event.");

  else if (doing_fake_step)
    {
      if (fake_step_tid != tsp->tts_lwpid)
	FUNC13 ("Internal error in stepping over breakpoint.");

      /* This wait clears the (current) fake-step if there was one.
       */
      doing_fake_step = 0;
      fake_step_tid = 0;
    }

  /* We now have a correct tsp and ttw_status for the thread
   * which we want to report.  So it's "handled"!  This call
   * will add it to our list if it's not there already.
   */
  FUNC11 (real_pid, tsp->tts_lwpid);

  /* Save a copy of the ttrace state of this thread, in our local
     thread descriptor.

     This caches the state.  The implementation of queries like
     hpux_has_execd can then use this cached state, rather than
     be forced to make an explicit ttrace call to get it.

     (Guard against the condition that this is the first time we've
     waited on, i.e., seen this thread, and so haven't yet entered
     it into our list of threads.)
   */
  tinfo = FUNC5 (tsp->tts_lwpid);
  if (tinfo != NULL)
    {
      FUNC3 (&tinfo->last_stop_state, tsp);
      tinfo->have_state = 1;
    }

  return ttw_status;
}