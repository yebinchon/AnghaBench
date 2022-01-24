#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ sig; } ;
struct target_waitstatus {scalar_t__ kind; TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  ptid_t ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ TARGET_SIGNAL_INT ; 
 scalar_t__ TARGET_SIGNAL_TRAP ; 
 scalar_t__ TARGET_WAITKIND_STOPPED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct target_waitstatus*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  minus_one_ptid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ stop_pc ; 

__attribute__((used)) static int
FUNC9 (void)
{
  ptid_t wait_ptid;
  struct target_waitstatus wait_status;

  /* Get the last target status returned by target_wait().  */
  FUNC3 (&wait_ptid, &wait_status);

  /* Make sure we were stopped either at a breakpoint, or because
     of a Ctrl-C.  */
  if (wait_status.kind != TARGET_WAITKIND_STOPPED
      || (wait_status.value.sig != TARGET_SIGNAL_TRAP &&
          wait_status.value.sig != TARGET_SIGNAL_INT))
    {
      return 0;
    }

  if (!FUNC4 (wait_ptid, minus_one_ptid)
      && !FUNC4 (inferior_ptid, wait_ptid))
    {
      /* Switched over from WAIT_PID.  */
      CORE_ADDR wait_pc = FUNC6 (wait_ptid);

      if (wait_pc != FUNC5 ())
	{
	  /* Switch back to WAIT_PID thread.  */
	  inferior_ptid = wait_ptid;

	  /* FIXME: This stuff came from switch_to_thread() in
	     thread.c (which should probably be a public function).  */
	  FUNC1 ();
	  FUNC7 ();
	  stop_pc = wait_pc;
	  FUNC8 (FUNC2 ());
	}

	/* We return 1 to indicate that there is a breakpoint here,
	   so we need to step over it before continuing to avoid
	   hitting it straight away. */
	if (FUNC0 (wait_pc))
	   return 1;
    }

  return 0;
  
}