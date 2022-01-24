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
#define  CONST 131 
#define  CONST_DOUBLE 130 
#define  CONST_VECTOR 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PLUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_VIS ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC7 (rtx x)
{
  rtx inner;

  switch (FUNC0 (x))
    {
    case SYMBOL_REF:
      /* TLS symbols are not constant.  */
      if (FUNC4 (x))
	return false;
      break;

    case CONST:
      inner = FUNC5 (x, 0);

      /* Offsets of TLS symbols are never valid.
	 Discourage CSE from creating them.  */
      if (FUNC0 (inner) == PLUS
	  && FUNC3 (FUNC5 (inner, 0)))
	return false;
      break;

    case CONST_DOUBLE:
      if (FUNC1 (x) == VOIDmode)
        return true;

      /* Floating point constants are generally not ok.
	 The only exception is 0.0 in VIS.  */
      if (TARGET_VIS
	  && FUNC2 (FUNC1 (x))
	  && FUNC6 (x, FUNC1 (x)))
	return true;

      return false;

    case CONST_VECTOR:
      /* Vector constants are generally not ok.
	 The only exception is 0 in VIS.  */
      if (TARGET_VIS
	  && FUNC6 (x, FUNC1 (x)))
	return true;

      return false;

    default:
      break;
    }

  return true;
}