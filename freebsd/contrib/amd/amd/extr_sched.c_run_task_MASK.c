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
typedef  scalar_t__ wchan_t ;
typedef  int /*<<< orphan*/  (* task_fun ) (int /*<<< orphan*/ ) ;
typedef  int sigset_t ;
struct TYPE_3__ {int /*<<< orphan*/  pid; scalar_t__ wchan; } ;
typedef  TYPE_1__ pjob ;
typedef  int /*<<< orphan*/  opaque_t ;
typedef  int /*<<< orphan*/  cb_fun ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(task_fun *tf, opaque_t ta, cb_fun *cf, opaque_t ca)
{
  pjob *p = FUNC3(cf, ca);
#ifdef HAVE_SIGACTION
  sigset_t new, mask;
#else /* not HAVE_SIGACTION */
  int mask;
#endif /* not HAVE_SIGACTION */

  p->wchan = (wchan_t) p;

#ifdef HAVE_SIGACTION
  sigemptyset(&new);		/* initialize signal set we wish to block */
  sigaddset(&new, SIGCHLD);	/* only block on SIGCHLD */
  sigprocmask(SIG_BLOCK, &new, &mask);
#else /* not HAVE_SIGACTION */
  mask = FUNC5(FUNC7(SIGCHLD));
#endif /* not HAVE_SIGACTION */

  if ((p->pid = FUNC1())) {
#ifdef HAVE_SIGACTION
    sigprocmask(SIG_SETMASK, &mask, NULL);
#else /* not HAVE_SIGACTION */
    FUNC9(mask);
#endif /* not HAVE_SIGACTION */
    return;
  }

  /* child code runs here, parent has returned to caller */

  FUNC2((*tf) (ta));
  /* firewall... */
  FUNC0();
}