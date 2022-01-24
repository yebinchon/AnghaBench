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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 int BIGGEST_ALIGNMENT ; 
 int BITS_PER_UNIT ; 
 scalar_t__ BIT_AND_EXPR ; 
 scalar_t__ CONVERT_EXPR ; 
 scalar_t__ NEGATE_EXPR ; 
 scalar_t__ NON_LVALUE_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC6 (tree offset, tree exp)
{
  /* Strip off any conversions.  */
  while (FUNC0 (offset) == NON_LVALUE_EXPR
	 || FUNC0 (offset) == NOP_EXPR
	 || FUNC0 (offset) == CONVERT_EXPR)
    offset = FUNC1 (offset, 0);

  /* We must now have a BIT_AND_EXPR with a constant that is one less than
     power of 2 and which is larger than BIGGEST_ALIGNMENT.  */
  if (FUNC0 (offset) != BIT_AND_EXPR
      || !FUNC4 (FUNC1 (offset, 1), 1)
      || FUNC2 (FUNC1 (offset, 1),
			   BIGGEST_ALIGNMENT / BITS_PER_UNIT) <= 0
      || !(FUNC3 (FUNC5 (FUNC1 (offset, 1), 1) + 1) < 0))
    return 0;

  /* Look at the first operand of BIT_AND_EXPR and strip any conversion.
     It must be NEGATE_EXPR.  Then strip any more conversions.  */
  offset = FUNC1 (offset, 0);
  while (FUNC0 (offset) == NON_LVALUE_EXPR
	 || FUNC0 (offset) == NOP_EXPR
	 || FUNC0 (offset) == CONVERT_EXPR)
    offset = FUNC1 (offset, 0);

  if (FUNC0 (offset) != NEGATE_EXPR)
    return 0;

  offset = FUNC1 (offset, 0);
  while (FUNC0 (offset) == NON_LVALUE_EXPR
	 || FUNC0 (offset) == NOP_EXPR
	 || FUNC0 (offset) == CONVERT_EXPR)
    offset = FUNC1 (offset, 0);

  /* This must now be the address of EXP.  */
  return FUNC0 (offset) == ADDR_EXPR && FUNC1 (offset, 0) == exp;
}