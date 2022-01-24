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
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  CDI_POST_DOMINATORS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ flag_branch_probabilities ; 
 scalar_t__ flag_profile_values ; 
 scalar_t__ flag_value_profile_transformations ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static unsigned int
FUNC3 (void)
{
  FUNC0 ();
  if (flag_branch_probabilities
      && flag_profile_values
      && flag_value_profile_transformations)
    FUNC2 ();
  /* The above could hose dominator info.  Currently there is
     none coming in, this is a safety valve.  It should be
     easy to adjust it, if and when there is some.  */
  FUNC1 (CDI_DOMINATORS);
  FUNC1 (CDI_POST_DOMINATORS);
  return 0;
}