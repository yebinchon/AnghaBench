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
 scalar_t__ CONCAT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ SUBREG ; 
 scalar_t__ VOIDmode ; 
 scalar_t__ FUNC2 (int,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC3 (int,scalar_t__,int,unsigned int) ; 
 scalar_t__ FUNC4 (int,int,scalar_t__,unsigned int) ; 

rtx
FUNC5 (enum machine_mode outermode, rtx op,
		     enum machine_mode innermode, unsigned int byte)
{
  rtx newx;

  newx = FUNC3 (outermode, op, innermode, byte);
  if (newx)
    return newx;

  if (FUNC0 (op) == SUBREG
      || FUNC0 (op) == CONCAT
      || FUNC1 (op) == VOIDmode)
    return NULL_RTX;

  if (FUNC4 (outermode, innermode, op, byte))
    return FUNC2 (outermode, op, byte);

  return NULL_RTX;
}