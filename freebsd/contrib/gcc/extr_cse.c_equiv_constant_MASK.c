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
struct table_elt {scalar_t__ exp; scalar_t__ is_const; struct table_elt* next_same_value; struct table_elt* first_same_value; } ;
struct qty_table_elem {scalar_t__ const_rtx; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct table_elt* FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qty_table_elem* qty_table ; 

__attribute__((used)) static rtx
FUNC11 (rtx x)
{
  if (FUNC5 (x)
      && FUNC4 (FUNC3 (x)))
    {
      int x_q = FUNC6 (FUNC3 (x));
      struct qty_table_elem *x_ent = &qty_table[x_q];

      if (x_ent->const_rtx)
	x = FUNC9 (FUNC1 (x), x_ent->const_rtx);
    }

  if (x == 0 || FUNC0 (x))
    return x;

  /* If X is a MEM, try to fold it outside the context of any insn to see if
     it might be equivalent to a constant.  That handles the case where it
     is a constant-pool reference.  Then try to look it up in the hash table
     in case it is something whose value we have seen before.  */

  if (FUNC2 (x))
    {
      struct table_elt *elt;

      x = FUNC8 (x, NULL_RTX);
      if (FUNC0 (x))
	return x;

      elt = FUNC10 (x, FUNC7 (x, FUNC1 (x)), FUNC1 (x));
      if (elt == 0)
	return 0;

      for (elt = elt->first_same_value; elt; elt = elt->next_same_value)
	if (elt->is_const && FUNC0 (elt->exp))
	  return elt->exp;
    }

  return 0;
}