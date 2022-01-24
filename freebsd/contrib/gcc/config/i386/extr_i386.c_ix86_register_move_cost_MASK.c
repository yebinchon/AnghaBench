#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int mmxsse_to_integer; int fp_move; int sse_move; int mmx_move; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 TYPE_1__* ix86_cost ; 
 scalar_t__ FUNC8 (int,int,int,int /*<<< orphan*/ ) ; 

int
FUNC9 (enum machine_mode mode, enum reg_class class1,
			 enum reg_class class2)
{
  /* In case we require secondary memory, compute cost of the store followed
     by load.  In order to avoid bad register allocation choices, we need
     for this to be *at least* as high as the symmetric MEMORY_MOVE_COST.  */

  if (FUNC8 (class1, class2, mode, 0))
    {
      int cost = 1;

      cost += FUNC1 (FUNC5 (mode, class1, 0),
		   FUNC5 (mode, class1, 1));
      cost += FUNC1 (FUNC5 (mode, class2, 0),
		   FUNC5 (mode, class2, 1));

      /* In case of copying from general_purpose_register we may emit multiple
         stores followed by single load causing memory size mismatch stall.
         Count this as arbitrarily high cost of 20.  */
      if (FUNC0 (class1, mode) > FUNC0 (class2, mode))
	cost += 20;

      /* In the case of FP/MMX moves, the registers actually overlap, and we
	 have to switch modes in order to treat them differently.  */
      if ((FUNC6 (class1) && FUNC2 (class2))
          || (FUNC6 (class2) && FUNC2 (class1)))
	cost += 20;

      return cost;
    }

  /* Moves between SSE/MMX and integer unit are expensive.  */
  if (FUNC6 (class1) != FUNC6 (class2)
      || FUNC7 (class1) != FUNC7 (class2))
    return ix86_cost->mmxsse_to_integer;
  if (FUNC2 (class1))
    return ix86_cost->fp_move;
  if (FUNC4 (class1))
    return ix86_cost->sse_move;
  if (FUNC3 (class1))
    return ix86_cost->mmx_move;
  return 2;
}