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
struct lwp_info {int cloned; int stopped; int resumed; int /*<<< orphan*/  status; } ;
typedef  int pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* to_attach ) (char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ ECHILD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SIGSTOP ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  __WCLONE ; 
 struct lwp_info* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ child_ops ; 
 scalar_t__ debug_lin_lwp ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (char *args, int from_tty)
{
  struct lwp_info *lp;
  pid_t pid;
  int status;

  /* FIXME: We should probably accept a list of process id's, and
     attach all of them.  */
  child_ops.to_attach (args, from_tty);

  /* Add the initial process as the first LWP to the list.  */
  lp = FUNC5 (FUNC0 (FUNC1 (inferior_ptid), FUNC1 (inferior_ptid)));

  /* Make sure the initial process is stopped.  The user-level threads
     layer might want to poke around in the inferior, and that won't
     work if things haven't stabilized yet.  */
  pid = FUNC10 (FUNC1 (inferior_ptid), &status, 0);
  if (pid == -1 && errno == ECHILD)
    {
      FUNC11 ("%s is a cloned process", FUNC9 (inferior_ptid));

      /* Try again with __WCLONE to check cloned processes.  */
      pid = FUNC10 (FUNC1 (inferior_ptid), &status, __WCLONE);
      lp->cloned = 1;
    }

  FUNC7 (pid == FUNC1 (inferior_ptid)
	      && FUNC2 (status) && FUNC3 (status) == SIGSTOP);

  lp->stopped = 1;

  /* Fake the SIGSTOP that core GDB expects.  */
  lp->status = FUNC4 (SIGSTOP);
  lp->resumed = 1;
  if (debug_lin_lwp)
    {
      FUNC6 (gdb_stdlog,
			  "LLA: waitpid %ld, faking SIGSTOP\n", (long) pid);
    }
}