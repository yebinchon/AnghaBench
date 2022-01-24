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
struct TYPE_2__ {int /*<<< orphan*/  sig; } ;
struct target_waitstatus {int /*<<< orphan*/  kind; TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  ptid_t ;
typedef  enum target_waitkind { ____Placeholder_target_waitkind } target_waitkind ;

/* Variables and functions */
 int EINTR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_SIGNAL_UNKNOWN ; 
 int /*<<< orphan*/  TARGET_WAITKIND_SIGNALLED ; 
 int /*<<< orphan*/  TARGET_WAITKIND_SPURIOUS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct target_waitstatus*,int) ; 
 scalar_t__ FUNC10 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ptid_t
FUNC12 (ptid_t ptid, struct target_waitstatus *ourstatus)
{
  int save_errno;
  int status;
  char *execd_pathname = NULL;
  int exit_status;
  int related_pid;
  int syscall_id;
  enum target_waitkind kind;
  int pid;

  do
    {
      FUNC7 ();	/* Causes SIGINT to be passed on to the
				   attached process. */
      FUNC8 ();

      pid = FUNC5 (inferior_ptid, &status);

      save_errno = errno;

      FUNC2 ();

      FUNC1 ();

      if (pid == -1)
	{
	  if (save_errno == EINTR)
	    continue;

	  FUNC3 (gdb_stderr, "Child process unexpectedly missing: %s.\n",
			      FUNC6 (save_errno));

	  /* Claim it exited with unknown signal.  */
	  ourstatus->kind = TARGET_WAITKIND_SIGNALLED;
	  ourstatus->value.sig = TARGET_SIGNAL_UNKNOWN;
	  return FUNC4 (-1);
	}

      /* Did it exit?
       */
      if (FUNC10 (pid, status, &exit_status))
	{
	  /* ??rehrauer: For now, ignore this. */
	  continue;
	}

      if (!FUNC11 (FUNC4 (pid)))
	{
	  ourstatus->kind = TARGET_WAITKIND_SPURIOUS;
	  return FUNC4 (pid);
	}
      } while (pid != FUNC0 (inferior_ptid)); /* Some other child died or stopped */

  FUNC9 (ourstatus, status);
  return FUNC4 (pid);
}