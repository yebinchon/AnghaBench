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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ MINUS ; 
 scalar_t__ MULT ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ VOIDmode ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC8 (rtx x)
{
  if (FUNC4 (x)
      || (FUNC1 (x) && FUNC0 (x)
	  && FUNC3 (x) != VOIDmode))
    x = FUNC6 (FUNC3 (x), x);
  else if (FUNC2 (x) == PLUS || FUNC2 (x) == MINUS
	   || FUNC2 (x) == MULT)
    {
      rtx op0 = FUNC8 (FUNC5 (x, 0));
      rtx op1 = FUNC8 (FUNC5 (x, 1));

      if (op0 != FUNC5 (x, 0) || op1 != FUNC5 (x, 1))
	x = FUNC7 (FUNC2 (x), Pmode, op0, op1);
    }

  return x;
}