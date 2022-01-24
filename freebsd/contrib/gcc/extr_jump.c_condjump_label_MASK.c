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
 scalar_t__ IF_THEN_ELSE ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ pc_rtx ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

rtx
FUNC4 (rtx insn)
{
  rtx x = FUNC3 (insn);

  if (!x)
    return NULL_RTX;
  x = FUNC1 (x);
  if (FUNC0 (x) == LABEL_REF)
    return x;
  if (FUNC0 (x) != IF_THEN_ELSE)
    return NULL_RTX;
  if (FUNC2 (x, 2) == pc_rtx && FUNC0 (FUNC2 (x, 1)) == LABEL_REF)
    return FUNC2 (x, 1);
  if (FUNC2 (x, 1) == pc_rtx && FUNC0 (FUNC2 (x, 2)) == LABEL_REF)
    return FUNC2 (x, 2);
  return NULL_RTX;
}