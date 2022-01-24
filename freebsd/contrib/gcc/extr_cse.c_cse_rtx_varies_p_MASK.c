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
struct qty_table_elem {scalar_t__ mode; scalar_t__ const_rtx; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct qty_table_elem* qty_table ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8 (rtx x, int from_alias)
{
  /* We need not check for X and the equivalence class being of the same
     mode because if X is equivalent to a constant in some mode, it
     doesn't vary in any mode.  */

  if (FUNC4 (x)
      && FUNC3 (FUNC2 (x)))
    {
      int x_q = FUNC5 (FUNC2 (x));
      struct qty_table_elem *x_ent = &qty_table[x_q];

      if (FUNC1 (x) == x_ent->mode
	  && x_ent->const_rtx != NULL_RTX)
	return 0;
    }

  if (FUNC0 (x) == PLUS
      && FUNC0 (FUNC6 (x, 1)) == CONST_INT
      && FUNC4 (FUNC6 (x, 0))
      && FUNC3 (FUNC2 (FUNC6 (x, 0))))
    {
      int x0_q = FUNC5 (FUNC2 (FUNC6 (x, 0)));
      struct qty_table_elem *x0_ent = &qty_table[x0_q];

      if ((FUNC1 (FUNC6 (x, 0)) == x0_ent->mode)
	  && x0_ent->const_rtx != NULL_RTX)
	return 0;
    }

  /* This can happen as the result of virtual register instantiation, if
     the initial constant is too large to be a valid address.  This gives
     us a three instruction sequence, load large offset into a register,
     load fp minus a constant into a register, then a MEM which is the
     sum of the two `constant' registers.  */
  if (FUNC0 (x) == PLUS
      && FUNC4 (FUNC6 (x, 0))
      && FUNC4 (FUNC6 (x, 1))
      && FUNC3 (FUNC2 (FUNC6 (x, 0)))
      && FUNC3 (FUNC2 (FUNC6 (x, 1))))
    {
      int x0_q = FUNC5 (FUNC2 (FUNC6 (x, 0)));
      int x1_q = FUNC5 (FUNC2 (FUNC6 (x, 1)));
      struct qty_table_elem *x0_ent = &qty_table[x0_q];
      struct qty_table_elem *x1_ent = &qty_table[x1_q];

      if ((FUNC1 (FUNC6 (x, 0)) == x0_ent->mode)
	  && x0_ent->const_rtx != NULL_RTX
	  && (FUNC1 (FUNC6 (x, 1)) == x1_ent->mode)
	  && x1_ent->const_rtx != NULL_RTX)
	return 0;
    }

  return FUNC7 (x, from_alias);
}