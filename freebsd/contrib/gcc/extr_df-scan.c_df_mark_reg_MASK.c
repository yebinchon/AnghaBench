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
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  bitmap ;

/* Variables and functions */
 size_t BLKmode ; 
 int FIRST_PSEUDO_REGISTER ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int** hard_regno_nregs ; 

__attribute__((used)) static void
FUNC4 (rtx reg, void *vset)
{
  bitmap set = (bitmap) vset;
  int regno = FUNC1 (reg);

  FUNC3 (FUNC0 (reg) != BLKmode);

  FUNC2 (set, regno);
  if (regno < FIRST_PSEUDO_REGISTER)
    {
      int n = hard_regno_nregs[regno][FUNC0 (reg)];
      while (--n > 0)
	FUNC2  (set, regno + n);
    }
}