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
typedef  int (* rtx_function ) (scalar_t__*,void*) ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int FUNC1 (scalar_t__,int,int (*) (scalar_t__*,void*),void*) ; 
 int* non_rtx_starting_operands ; 
 int FUNC2 (scalar_t__*,void*) ; 

int
FUNC3 (rtx *x, rtx_function f, void *data)
{
  int result;
  int i;

  /* Call F on X.  */
  result = (*f) (x, data);
  if (result == -1)
    /* Do not traverse sub-expressions.  */
    return 0;
  else if (result != 0)
    /* Stop the traversal.  */
    return result;

  if (*x == NULL_RTX)
    /* There are no sub-expressions.  */
    return 0;

  i = non_rtx_starting_operands[FUNC0 (*x)];
  if (i < 0)
    return 0;

  return FUNC1 (*x, i, f, data);
}