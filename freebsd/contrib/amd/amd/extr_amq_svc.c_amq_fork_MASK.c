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
typedef  int sigset_t ;
typedef  int pid_t ;
typedef  scalar_t__ opaque_t ;
struct TYPE_3__ {int* am_fd; } ;
typedef  TYPE_1__ am_node ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ errno ; 
 TYPE_1__* FUNC3 (char*) ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(opaque_t argp)
{
#ifdef HAVE_SIGACTION
  sigset_t new, mask;
#else /* not HAVE_SIGACTION */
  int mask;
#endif /* not HAVE_SIGACTION */
  am_node *mp;
  pid_t pid;

  mp = FUNC3(*(char **) argp);
  if (mp == NULL) {
    errno = 0;
    return -1;
  }

  if (FUNC4(mp->am_fd) == -1) {
    mp->am_fd[0] = -1;
    mp->am_fd[1] = -1;
    return -1;
  }

#ifdef HAVE_SIGACTION
  sigemptyset(&new);		/* initialize signal set we wish to block */
  sigaddset(&new, SIGHUP);
  sigaddset(&new, SIGINT);
  sigaddset(&new, SIGQUIT);
  sigaddset(&new, SIGCHLD);
  sigprocmask(SIG_BLOCK, &new, &mask);
#else /* not HAVE_SIGACTION */
  mask =
      FUNC8(SIGHUP) |
      FUNC8(SIGINT) |
      FUNC8(SIGQUIT) |
      FUNC8(SIGCHLD);
  mask = FUNC6(mask);
#endif /* not HAVE_SIGACTION */

  switch ((pid = FUNC0())) {
  case -1:	/* error */
    FUNC2("amq_fork failed");
    return -1;

  case 0:	/* child */
    FUNC1(mp->am_fd[1]);	/* close output end of pipe */
    mp->am_fd[1] = -1;
    return 0;

  default:	/* parent */
    FUNC1(mp->am_fd[0]);	/* close input end of pipe */
    mp->am_fd[0] = -1;

#ifdef HAVE_SIGACTION
    sigprocmask(SIG_SETMASK, &mask, NULL);
#else /* not HAVE_SIGACTION */
    FUNC10(mask);
#endif /* not HAVE_SIGACTION */
    return pid;
  }
}