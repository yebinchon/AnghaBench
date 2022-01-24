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
typedef  int /*<<< orphan*/  tree ;
struct args_size {int /*<<< orphan*/  constant; } ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct args_size,int /*<<< orphan*/ ) ; 
 int BITS_PER_UNIT ; 
 int BLKmode ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ INTEGER_CST ; 
 int PARM_BOUNDARY ; 
 int /*<<< orphan*/  FUNC3 (struct args_size,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7 (struct args_size *offset_ptr, enum machine_mode passed_mode, tree sizetree)
{
  if (passed_mode != BLKmode)
    {
      if (FUNC1 (passed_mode) % PARM_BOUNDARY)
	offset_ptr->constant
	  += (((FUNC1 (passed_mode) + PARM_BOUNDARY - 1)
	       / PARM_BOUNDARY * PARM_BOUNDARY / BITS_PER_UNIT)
	      - FUNC2 (passed_mode));
    }
  else
    {
      if (FUNC4 (sizetree) != INTEGER_CST
	  || (FUNC5 (sizetree) * BITS_PER_UNIT) % PARM_BOUNDARY)
	{
	  /* Round the size up to multiple of PARM_BOUNDARY bits.  */
	  tree s2 = FUNC6 (sizetree, PARM_BOUNDARY / BITS_PER_UNIT);
	  /* Add it in.  */
	  FUNC0 (*offset_ptr, s2);
	  FUNC3 (*offset_ptr, sizetree);
	}
    }
}