#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int tts_event; } ;
typedef  TYPE_1__ ttstate_t ;
typedef  int /*<<< orphan*/  ttrace_state ;
struct TYPE_6__ {int /*<<< orphan*/  last_stop_state; } ;
typedef  TYPE_2__ thread_info ;
typedef  int /*<<< orphan*/  TTRACE_ARG_TYPE ;

/* Variables and functions */
 int TTEVT_EXEC ; 
 int /*<<< orphan*/  TT_LWP_GET_STATE ; 
 int /*<<< orphan*/  TT_NIL ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int) ; 

int
FUNC8 (int tid, char **execd_pathname)
{
  int tt_status;
  ttstate_t ttrace_state;
  thread_info *tinfo;

  /* Do we have cached thread state that we can consult?  If so, use it. */
  tinfo = FUNC2 (FUNC3 (tid));
  if (tinfo != NULL)
    FUNC1 (&ttrace_state, &tinfo->last_stop_state);

  /* Nope, must read the thread's current state */
  else
    {
      tt_status = FUNC0 (TT_LWP_GET_STATE,
			       tid,
			       (TTRACE_ARG_TYPE) & ttrace_state,
			       (TTRACE_ARG_TYPE) sizeof (ttrace_state),
			       TT_NIL);

      if (errno)
	FUNC4 ("ttrace");

      if (tt_status < 0)
	return 0;
    }

  if (ttrace_state.tts_event & TTEVT_EXEC)
    {
      /* See child_pid_to_exec_file in this file: this is a macro.
       */
      char *exec_file = FUNC7 (tid);

      *execd_pathname = FUNC5 (exec_file, FUNC6 (exec_file));
      return 1;
    }

  return 0;
}