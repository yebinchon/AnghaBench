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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
#define  SIGN_EXTEND 131 
#define  STRICT_LOW_PART 130 
#define  SUBREG 129 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  ZERO_EXTEND 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

rtx
FUNC11 (rtx x, rtx other)
{
  while (1)
    switch (FUNC1 (other))
      {
      case SUBREG:
	other = FUNC6 (other);
	break;
      case STRICT_LOW_PART:
      case SIGN_EXTEND:
      case ZERO_EXTEND:
	other = FUNC7 (other, 0);
	break;
      default:
	goto done;
      }
 done:
  if ((FUNC3 (other)
       && ! FUNC0 (x)
       && !FUNC5 (x)
       && FUNC1 (x) != SUBREG)
      || (FUNC5 (other)
	  && (FUNC4 (other) < FIRST_PSEUDO_REGISTER
	      || FUNC10 (other, x))))
    {
      rtx temp = FUNC9 (FUNC2 (x));
      FUNC8 (temp, x);
      return temp;
    }
  return x;
}