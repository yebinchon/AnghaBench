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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 int PREFERRED_STACK_BOUNDARY ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  TRUNC_DIV_EXPR ; 
 int /*<<< orphan*/  add_optab ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rtx
FUNC6 (rtx size)
{
  int align = PREFERRED_STACK_BOUNDARY / BITS_PER_UNIT;

  if (align == 1)
    return size;

  if (FUNC1 (size) == CONST_INT)
    {
      HOST_WIDE_INT new = (FUNC2 (size) + align - 1) / align * align;

      if (FUNC2 (size) != new)
	size = FUNC0 (new);
    }
  else
    {
      /* CEIL_DIV_EXPR needs to worry about the addition overflowing,
	 but we know it can't.  So add ourselves and then do
	 TRUNC_DIV_EXPR.  */
      size = FUNC3 (Pmode, add_optab, size, FUNC0 (align - 1),
			   NULL_RTX, 1, OPTAB_LIB_WIDEN);
      size = FUNC4 (0, TRUNC_DIV_EXPR, Pmode, size, FUNC0 (align),
			    NULL_RTX, 1);
      size = FUNC5 (Pmode, size, FUNC0 (align), NULL_RTX, 1);
    }

  return size;
}