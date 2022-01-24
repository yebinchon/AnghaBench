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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAP_ARM ; 
 int /*<<< orphan*/  MAP_THUMB ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  arm_ext_v1 ; 
 int /*<<< orphan*/  arm_ext_v4t ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  cpu_variant ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  need_pass_2 ; 
 int /*<<< orphan*/  now_seg ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int thumb_mode ; 

__attribute__((used)) static void
FUNC6 (int width)
{
  switch (width)
    {
    case 16:
      if (! thumb_mode)
	{
	  if (!FUNC0 (cpu_variant, arm_ext_v4t))
	    FUNC2 (FUNC1("selected processor does not support THUMB opcodes"));

	  thumb_mode = 1;
	  /* No need to force the alignment, since we will have been
	     coming from ARM mode, which is word-aligned.  */
	  FUNC5 (now_seg, 1);
	}
      FUNC4 (MAP_THUMB);
      break;

    case 32:
      if (thumb_mode)
	{
	  if (!FUNC0 (cpu_variant, arm_ext_v1))
	    FUNC2 (FUNC1("selected processor does not support ARM opcodes"));

	  thumb_mode = 0;

	  if (!need_pass_2)
	    FUNC3 (2, 0, 0);

	  FUNC5 (now_seg, 1);
	}
      FUNC4 (MAP_ARM);
      break;

    default:
      FUNC2 (FUNC1("invalid instruction size selected (%d)"), width);
    }
}