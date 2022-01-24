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
typedef  int /*<<< orphan*/  regset ;

/* Variables and functions */
 int FIRST_PSEUDO_REGISTER ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int** hard_regno_nregs ; 

__attribute__((used)) static int
FUNC4 (rtx *x, void *data)
{
  regset nonequal = (regset) data;
  if (FUNC3 (*x))
    {
      int regno;

      regno = FUNC1 (*x);
      if (FUNC2 (nonequal, regno))
	return 1;
      if (regno < FIRST_PSEUDO_REGISTER)
	{
	  int n = hard_regno_nregs[regno][FUNC0 (*x)];
	  while (--n > 0)
	    if (FUNC2 (nonequal, regno + n))
	      return 1;
	}
    }
  return 0;
}