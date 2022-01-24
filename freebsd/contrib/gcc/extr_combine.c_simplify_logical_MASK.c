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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
#define  AND 129 
 int const CONST_INT ; 
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  HOST_BITS_PER_WIDE_INT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  IOR 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int const XOR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC8 (rtx x)
{
  enum machine_mode mode = FUNC1 (x);
  rtx op0 = FUNC4 (x, 0);
  rtx op1 = FUNC4 (x, 1);

  switch (FUNC0 (x))
    {
    case AND:
      /* We can call simplify_and_const_int only if we don't lose
	 any (sign) bits when converting INTVAL (op1) to
	 "unsigned HOST_WIDE_INT".  */
      if (FUNC0 (op1) == CONST_INT
	  && (FUNC2 (mode) <= HOST_BITS_PER_WIDE_INT
	      || FUNC3 (op1) > 0))
	{
	  x = FUNC7 (x, mode, op0, FUNC3 (op1));
	  if (FUNC0 (x) != AND)
	    return x;

	  op0 = FUNC4 (x, 0);
	  op1 = FUNC4 (x, 1);
	}

      /* If we have any of (and (ior A B) C) or (and (xor A B) C),
	 apply the distributive law and then the inverse distributive
	 law to see if things simplify.  */
      if (FUNC0 (op0) == IOR || FUNC0 (op0) == XOR)
	{
	  rtx result = FUNC5 (x, 0);
	  if (result)
	    return result;
	}
      if (FUNC0 (op1) == IOR || FUNC0 (op1) == XOR)
	{
	  rtx result = FUNC5 (x, 1);
	  if (result)
	    return result;
	}
      break;

    case IOR:
      /* If we have (ior (and A B) C), apply the distributive law and then
	 the inverse distributive law to see if things simplify.  */

      if (FUNC0 (op0) == AND)
	{
	  rtx result = FUNC5 (x, 0);
	  if (result)
	    return result;
	}

      if (FUNC0 (op1) == AND)
	{
	  rtx result = FUNC5 (x, 1);
	  if (result)
	    return result;
	}
      break;

    default:
      FUNC6 ();
    }

  return x;
}