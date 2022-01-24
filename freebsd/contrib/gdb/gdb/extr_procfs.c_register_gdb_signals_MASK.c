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
typedef  int /*<<< orphan*/  procinfo ;
typedef  int /*<<< orphan*/  gdb_sigset_t ;

/* Variables and functions */
 int NSIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7 (procinfo *pi, gdb_sigset_t *signals)
{
  int signo;

  for (signo = 0; signo < NSIG; signo ++)
    if (FUNC5  (FUNC6 (signo)) == 0 &&
	FUNC4 (FUNC6 (signo)) == 0 &&
	FUNC3  (FUNC6 (signo)) == 1)
      FUNC1 (signals, signo);
    else
      FUNC0 (signals, signo);

  return FUNC2 (pi, signals);
}