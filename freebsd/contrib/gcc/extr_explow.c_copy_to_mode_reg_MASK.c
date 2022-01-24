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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

rtx
FUNC6 (enum machine_mode mode, rtx x)
{
  rtx temp = FUNC4 (mode);

  /* If not an operand, must be an address with PLUS and MULT so
     do the computation.  */
  if (! FUNC5 (x, VOIDmode))
    x = FUNC2 (x, temp);

  FUNC3 (FUNC0 (x) == mode || FUNC0 (x) == VOIDmode);
  if (x != temp)
    FUNC1 (temp, x);
  return temp;
}