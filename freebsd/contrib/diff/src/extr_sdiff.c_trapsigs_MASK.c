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
struct TYPE_2__ {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_flags; } ;

/* Variables and functions */
 int NUM_SIGS ; 
 int /*<<< orphan*/  SA_RESTART ; 
 int /*<<< orphan*/  SIGCHLD ; 
 scalar_t__ SIG_DFL ; 
 scalar_t__ SIG_IGN ; 
 TYPE_1__ catchaction ; 
 int /*<<< orphan*/  catchsig ; 
 int /*<<< orphan*/ * initial_action ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sigs ; 
 int sigs_trapped ; 

__attribute__((used)) static void
FUNC6 (void)
{
  int i;

#if HAVE_SIGACTION
  catchaction.sa_flags = SA_RESTART;
  sigemptyset (&catchaction.sa_mask);
  for (i = 0;  i < NUM_SIGS;  i++)
    sigaddset (&catchaction.sa_mask, sigs[i]);
#endif

  for (i = 0;  i < NUM_SIGS;  i++)
    {
#if HAVE_SIGACTION
      sigaction (sigs[i], 0, &initial_action[i]);
#else
      initial_action[i] = FUNC4 (sigs[i], SIG_IGN);
#endif
      if (FUNC0 (i) != SIG_IGN)
	FUNC5 (sigs[i], catchsig);
    }

#ifdef SIGCHLD
  /* System V fork+wait does not work if SIGCHLD is ignored.  */
  signal (SIGCHLD, SIG_DFL);
#endif

  sigs_trapped = true;
}