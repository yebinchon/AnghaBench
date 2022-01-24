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
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  blocked_mask ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sigchld_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  suspend_mask ; 

void
FUNC6 (sigset_t *set)
{
  struct sigaction action;
  int restart, cancel;

  FUNC4 (set);

  restart = FUNC0 ("__pthread_sig_restart");
  if (restart == 0)
    return;

  cancel = FUNC0 ("__pthread_sig_cancel");
  if (cancel == 0)
    return;

  FUNC2 (set, restart);
  FUNC2 (set, cancel);

  /* The GNU/Linux Threads library makes terminating threads send a
     special "cancel" signal instead of SIGCHLD.  Make sure we catch
     those (to prevent them from terminating GDB itself, which is
     likely to be their default action) and treat them the same way as
     SIGCHLD.  */

  action.sa_handler = sigchld_handler;
  FUNC4 (&action.sa_mask);
  action.sa_flags = 0;
  FUNC1 (cancel, &action, NULL);

  /* We block the "cancel" signal throughout this code ...  */
  FUNC2 (&blocked_mask, cancel);
  FUNC5 (SIG_BLOCK, &blocked_mask, NULL);

  /* ... except during a sigsuspend.  */
  FUNC3 (&suspend_mask, cancel);
}