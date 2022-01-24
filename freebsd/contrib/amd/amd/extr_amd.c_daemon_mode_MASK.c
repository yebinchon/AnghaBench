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
struct sigaction {int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sa ;
typedef  int mode_t ;
struct TYPE_2__ {int flags; char* pid_file; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CFM_PRINT_PID ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ am_mypid ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int foreground ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 () ; 
 TYPE_1__ gopt ; 
 int /*<<< orphan*/  FUNC8 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  parent_exit ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC15 (int) ; 

__attribute__((used)) static int
FUNC16(void)
{
  int bgpid;

#ifdef HAVE_SIGACTION
  struct sigaction sa, osa;

  memset(&sa, 0, sizeof(sa));
  sa.sa_handler = parent_exit;
  sa.sa_flags = 0;
  sigemptyset(&(sa.sa_mask));
  sigaddset(&(sa.sa_mask), SIGQUIT);
  sigaction(SIGQUIT, &sa, &osa);
#else /* not HAVE_SIGACTION */
  FUNC14(SIGQUIT, parent_exit);
#endif /* not HAVE_SIGACTION */

  bgpid = FUNC2();

  if (bgpid != 0) {
    /*
     * Now wait for the automount points to
     * complete.
     */
    for (;;)
      FUNC9();
    /* should never reach here */
  }
#ifdef HAVE_SIGACTION
  sigaction(SIGQUIT, &osa, NULL);
#else /* not HAVE_SIGACTION */
  FUNC14(SIGQUIT, SIG_DFL);
#endif /* not HAVE_SIGACTION */

  /*
   * Record our pid to make it easier to kill the correct amd.
   */
  if (gopt.flags & CFM_PRINT_PID) {
    if (FUNC0(gopt.pid_file, "/dev/stdout")) {
      FUNC10("%ld\n", (long) am_mypid);
      /* flush stdout, just in case */
      FUNC4(stdout);
    } else {
      FILE *f;
      mode_t prev_umask = FUNC15(0022); /* set secure temporary umask */

      f = FUNC5(gopt.pid_file, "w");
      if (f) {
	FUNC6(*f, "%ld\n", (long) am_mypid);
	(void) FUNC3(f);
      } else {
	FUNC6(stderr, "cannot open %s (errno=%d)\n", gopt.pid_file, errno);
      }
      FUNC15(prev_umask);	/* restore umask */
    }
  }

  /*
   * Pretend we are in the foreground again
   */
  foreground = 1;

  /*
   * Dissociate from the controlling terminal
   */
  FUNC1();

  return FUNC7();
}