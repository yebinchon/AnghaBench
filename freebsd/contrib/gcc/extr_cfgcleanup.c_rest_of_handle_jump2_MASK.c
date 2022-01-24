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
 int CLEANUP_EXPENSIVE ; 
 int CLEANUP_THREADING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  dump_flags ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ flag_guess_branch_prob ; 
 scalar_t__ flag_thread_jumps ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ optimize ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static unsigned int
FUNC9 (void)
{
  /* Turn NOTE_INSN_EXPECTED_VALUE into REG_BR_PROB.  Do this
     before jump optimization switches branch directions.  */
  if (flag_guess_branch_prob)
    FUNC3 ();

  FUNC1 (FUNC4 (), FUNC5 ());
  FUNC7 (FUNC4 (), FUNC5 ());
  if (dump_file)
    FUNC2 (dump_file, dump_flags);
  FUNC0 ((optimize ? CLEANUP_EXPENSIVE : 0)
	       | (flag_thread_jumps ? CLEANUP_THREADING : 0));

  FUNC6 ();

  if (optimize)
    FUNC0 (CLEANUP_EXPENSIVE);

  /* Jump optimization, and the removal of NULL pointer checks, may
     have reduced the number of instructions substantially.  CSE, and
     future passes, allocate arrays whose dimensions involve the
     maximum instruction UID, so if we can reduce the maximum UID
     we'll save big on memory.  */
  FUNC8 ();
  return 0;
}