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
 int POINTER_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10 (tree expr)
{
  int prec;
  HOST_WIDE_INT high, low;

  FUNC1 (expr);

  if (FUNC2 (expr) == COMPLEX_CST)
    return FUNC9 (FUNC5 (expr));

  prec = (FUNC0 (FUNC6 (expr))
	  ? POINTER_SIZE : FUNC7 (FUNC6 (expr)));

  high = FUNC3 (expr);
  low = FUNC4 (expr);

  /* First clear all bits that are beyond the type's precision in case
     we've been sign extended.  Ignore if type's precision hasn't been set
     since what we are doing is setting it.  */

  if (prec == 2 * HOST_BITS_PER_WIDE_INT || prec == 0)
    ;
  else if (prec > HOST_BITS_PER_WIDE_INT)
    high &= ~((HOST_WIDE_INT) (-1) << (prec - HOST_BITS_PER_WIDE_INT));
  else
    {
      high = 0;
      if (prec < HOST_BITS_PER_WIDE_INT)
	low &= ~((HOST_WIDE_INT) (-1) << prec);
    }

  return (high != 0 ? HOST_BITS_PER_WIDE_INT + FUNC8 (high)
	  : FUNC8 (low));
}