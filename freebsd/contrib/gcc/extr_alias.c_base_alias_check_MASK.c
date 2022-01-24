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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ ADDRESS ; 
 scalar_t__ AND ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ Pmode ; 
 scalar_t__ VOIDmode ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int flag_argument_noalias ; 
 int /*<<< orphan*/  flag_expensive_optimizations ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC8 (rtx x, rtx y, enum machine_mode x_mode,
		  enum machine_mode y_mode)
{
  rtx x_base = FUNC6 (x);
  rtx y_base = FUNC6 (y);

  /* If the address itself has no known base see if a known equivalent
     value has one.  If either address still has no known base, nothing
     is known about aliasing.  */
  if (x_base == 0)
    {
      rtx x_c;

      if (! flag_expensive_optimizations || (x_c = FUNC5 (x)) == x)
	return 1;

      x_base = FUNC6 (x_c);
      if (x_base == 0)
	return 1;
    }

  if (y_base == 0)
    {
      rtx y_c;
      if (! flag_expensive_optimizations || (y_c = FUNC5 (y)) == y)
	return 1;

      y_base = FUNC6 (y_c);
      if (y_base == 0)
	return 1;
    }

  /* If the base addresses are equal nothing is known about aliasing.  */
  if (FUNC7 (x_base, y_base))
    return 1;

  /* The base addresses of the read and write are different expressions.
     If they are both symbols and they are not accessed via AND, there is
     no conflict.  We can bring knowledge of object alignment into play
     here.  For example, on alpha, "char a, b;" can alias one another,
     though "char a; long b;" cannot.  */
  if (FUNC0 (x_base) != ADDRESS && FUNC0 (y_base) != ADDRESS)
    {
      if (FUNC0 (x) == AND && FUNC0 (y) == AND)
	return 1;
      if (FUNC0 (x) == AND
	  && (FUNC0 (FUNC4 (x, 1)) != CONST_INT
	      || (int) FUNC2 (y_mode) < -FUNC3 (FUNC4 (x, 1))))
	return 1;
      if (FUNC0 (y) == AND
	  && (FUNC0 (FUNC4 (y, 1)) != CONST_INT
	      || (int) FUNC2 (x_mode) < -FUNC3 (FUNC4 (y, 1))))
	return 1;
      /* Differing symbols never alias.  */
      return 0;
    }

  /* If one address is a stack reference there can be no alias:
     stack references using different base registers do not alias,
     a stack reference can not alias a parameter, and a stack reference
     can not alias a global.  */
  if ((FUNC0 (x_base) == ADDRESS && FUNC1 (x_base) == Pmode)
      || (FUNC0 (y_base) == ADDRESS && FUNC1 (y_base) == Pmode))
    return 0;

  if (! flag_argument_noalias)
    return 1;

  if (flag_argument_noalias > 1)
    return 0;

  /* Weak noalias assertion (arguments are distinct, but may match globals).  */
  return ! (FUNC1 (x_base) == VOIDmode && FUNC1 (y_base) == VOIDmode);
}