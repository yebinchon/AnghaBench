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

/* Variables and functions */
 int /*<<< orphan*/  START_INFERIOR_TRAPS_EXPECTED ; 
 int /*<<< orphan*/  child_ops ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (int pid)
{
  FUNC1 (&child_ops);

  /* On some targets, there must be some explicit synchronization
     between the parent and child processes after the debugger
     forks, and before the child execs the debuggee program.  This
     call basically gives permission for the child to exec.
   */

  FUNC3 (pid);

  /* START_INFERIOR_TRAPS_EXPECTED is defined in inferior.h,
   * and will be 1 or 2 depending on whether we're starting
   * without or with a shell.
   */
  FUNC2 (START_INFERIOR_TRAPS_EXPECTED);

  /* On some targets, there must be some explicit actions taken after
     the inferior has been started up.
   */
  FUNC4 (FUNC0 (pid));
}