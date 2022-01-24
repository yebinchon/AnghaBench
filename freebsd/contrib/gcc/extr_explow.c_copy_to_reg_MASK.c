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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

rtx
FUNC5 (rtx x)
{
  rtx temp = FUNC3 (FUNC0 (x));

  /* If not an operand, must be an address with PLUS and MULT so
     do the computation.  */
  if (! FUNC4 (x, VOIDmode))
    x = FUNC2 (x, temp);

  if (x != temp)
    FUNC1 (temp, x);

  return temp;
}