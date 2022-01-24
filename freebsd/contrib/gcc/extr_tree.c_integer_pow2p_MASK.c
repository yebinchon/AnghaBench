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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ COMPLEX_CST ; 
 int HOST_BITS_PER_WIDE_INT ; 
 scalar_t__ INTEGER_CST ; 
 int POINTER_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10 (tree expr)
{
  int prec;
  HOST_WIDE_INT high, low;

  FUNC1 (expr);

  if (FUNC2 (expr) == COMPLEX_CST
      && FUNC10 (FUNC6 (expr))
      && FUNC9 (FUNC3 (expr)))
    return 1;

  if (FUNC2 (expr) != INTEGER_CST)
    return 0;

  prec = (FUNC0 (FUNC7 (expr))
	  ? POINTER_SIZE : FUNC8 (FUNC7 (expr)));
  high = FUNC4 (expr);
  low = FUNC5 (expr);

  /* First clear all bits that are beyond the type's precision in case
     we've been sign extended.  */

  if (prec == 2 * HOST_BITS_PER_WIDE_INT)
    ;
  else if (prec > HOST_BITS_PER_WIDE_INT)
    high &= ~((HOST_WIDE_INT) (-1) << (prec - HOST_BITS_PER_WIDE_INT));
  else
    {
      high = 0;
      if (prec < HOST_BITS_PER_WIDE_INT)
	low &= ~((HOST_WIDE_INT) (-1) << prec);
    }

  if (high == 0 && low == 0)
    return 0;

  return ((high == 0 && (low & (low - 1)) == 0)
	  || (low == 0 && (high & (high - 1)) == 0));
}