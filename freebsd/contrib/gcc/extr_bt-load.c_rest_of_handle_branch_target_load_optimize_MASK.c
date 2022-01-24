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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  epilogue_completed ; 
 scalar_t__ flag_branch_target_load_optimize ; 
 scalar_t__ flag_branch_target_load_optimize2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static unsigned int
FUNC2 (void)
{
  static int warned = 0;

  /* Leave this a warning for now so that it is possible to experiment
     with running this pass twice.  In 3.6, we should either make this
     an error, or use separate dump files.  */
  if (flag_branch_target_load_optimize
      && flag_branch_target_load_optimize2
      && !warned)
    {
      FUNC1 (0, "branch target register load optimization is not intended "
		  "to be run twice");

      warned = 1;
    }

  FUNC0 (epilogue_completed);
  return 0;
}