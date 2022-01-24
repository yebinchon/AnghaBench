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
typedef  int /*<<< orphan*/  rtvec ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

rtx
FUNC6 (enum machine_mode mode, rtvec v)
{
  enum machine_mode inner = FUNC2 (mode);
  int nunits = FUNC3 (mode);
  rtx x;
  int i;

  /* Check to see if all of the elements have the same value.  */
  x = FUNC4 (v, nunits - 1);
  for (i = nunits - 2; i >= 0; i--)
    if (FUNC4 (v, i) != x)
      break;

  /* If the values are all the same, check to see if we can use one of the
     standard constant vectors.  */
  if (i == -1)
    {
      if (x == FUNC0 (inner))
	return FUNC0 (mode);
      else if (x == FUNC1 (inner))
	return FUNC1 (mode);
    }

  return FUNC5 (mode, v);
}