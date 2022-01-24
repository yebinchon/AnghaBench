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
struct value_data {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int** hard_regno_nregs ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int,struct value_data*) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (rtx x, struct value_data *vd)
{
  rtx orig_rtx = x;

  if (FUNC0 (x) == SUBREG)
    {
      x = FUNC7 (FUNC1 (x), FUNC5 (x),
			   FUNC1 (FUNC5 (x)), FUNC4 (x));
      if (x == NULL_RTX)
	x = FUNC5 (orig_rtx);
    }
  if (FUNC3 (x))
    {
      unsigned int regno = FUNC2 (x);
      unsigned int n = hard_regno_nregs[regno][FUNC1 (x)];

      FUNC6 (regno, n, vd);
    }
}