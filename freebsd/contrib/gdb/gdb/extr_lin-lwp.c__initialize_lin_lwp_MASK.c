#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct target_ops {int dummy; } ;
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct target_ops*) ; 
 int /*<<< orphan*/  blocked_mask ; 
 int /*<<< orphan*/  debug_lin_lwp ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct target_ops lin_lwp_ops ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  normal_mask ; 
 int /*<<< orphan*/  setdebuglist ; 
 int /*<<< orphan*/  showdebuglist ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigchld_handler ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  suspend_mask ; 
 int /*<<< orphan*/  var_zinteger ; 

void
FUNC8 (void)
{
  struct sigaction action;

  extern void FUNC0 (struct target_ops *);

  FUNC3 ();
  FUNC2 (&lin_lwp_ops);
  FUNC0 (&lin_lwp_ops);

  /* Save the original signal mask.  */
  FUNC7 (SIG_SETMASK, NULL, &normal_mask);

  action.sa_handler = sigchld_handler;
  FUNC6 (&action.sa_mask);
  action.sa_flags = 0;
  FUNC4 (SIGCHLD, &action, NULL);

  /* Make sure we don't block SIGCHLD during a sigsuspend.  */
  FUNC7 (SIG_SETMASK, NULL, &suspend_mask);
  FUNC5 (&suspend_mask, SIGCHLD);

  FUNC6 (&blocked_mask);

  FUNC1 (FUNC0 ("lin-lwp", no_class, var_zinteger,
				  (char *) &debug_lin_lwp,
				  "Set debugging of GNU/Linux lwp module.\n\
Enables printf debugging output.\n", &setdebuglist), &showdebuglist);
}