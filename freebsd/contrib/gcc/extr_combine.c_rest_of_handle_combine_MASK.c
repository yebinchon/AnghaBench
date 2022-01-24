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
 int CLEANUP_UPDATE_LIFE ; 
 int /*<<< orphan*/  TV_JUMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC8 (void)
{
  int rebuild_jump_labels_after_combine
    = FUNC1 (FUNC3 (), FUNC4 ());

  /* Combining insns may have turned an indirect jump into a
     direct jump.  Rebuild the JUMP_LABEL fields of jumping
     instructions.  */
  if (rebuild_jump_labels_after_combine)
    {
      FUNC7 (TV_JUMP);
      FUNC5 (FUNC3 ());
      FUNC6 (TV_JUMP);

      FUNC2 ();
      FUNC0 (CLEANUP_EXPENSIVE | CLEANUP_UPDATE_LIFE);
    }
  return 0;
}