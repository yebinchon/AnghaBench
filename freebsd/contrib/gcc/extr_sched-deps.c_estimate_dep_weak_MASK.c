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
typedef  int dw_t ;

/* Variables and functions */
 int MIN_DEP_WEAK ; 
 int NO_DEP_WEAK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int UNCERTAIN_DEP_WEAK ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static dw_t
FUNC3 (rtx mem1, rtx mem2)
{
  rtx r1, r2;

  if (mem1 == mem2)
    /* MEMs are the same - don't speculate.  */
    return MIN_DEP_WEAK;

  r1 = FUNC2 (mem1, 0);
  r2 = FUNC2 (mem2, 0);

  if (r1 == r2
      || (FUNC1 (r1) && FUNC1 (r2)
	  && FUNC0 (r1) == FUNC0 (r2)))
    /* Again, MEMs are the same.  */
    return MIN_DEP_WEAK;
  else if ((FUNC1 (r1) && !FUNC1 (r2))
	   || (!FUNC1 (r1) && FUNC1 (r2)))
    /* Different addressing modes - reason to be more speculative,
       than usual.  */
    return NO_DEP_WEAK - (NO_DEP_WEAK - UNCERTAIN_DEP_WEAK) / 2;
  else
    /* We can't say anything about the dependence.  */
    return UNCERTAIN_DEP_WEAK;
}