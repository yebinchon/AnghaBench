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
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ PC ; 
 scalar_t__ RETURN ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pc_rtx ; 

int
FUNC6 (rtx insn)
{
  rtx x = FUNC1 (insn);

  if (FUNC0 (x) != PARALLEL)
    return 0;
  else
    x = FUNC5 (x, 0, 0);

  if (FUNC0 (x) != SET)
    return 0;
  if (FUNC0 (FUNC2 (x)) != PC)
    return 0;
  if (FUNC0 (FUNC3 (x)) == LABEL_REF)
    return 1;
  if (FUNC0 (FUNC3 (x)) != IF_THEN_ELSE)
    return 0;
  if (FUNC4 (FUNC3 (x), 2) == pc_rtx
      && (FUNC0 (FUNC4 (FUNC3 (x), 1)) == LABEL_REF
	  || FUNC0 (FUNC4 (FUNC3 (x), 1)) == RETURN))
    return 1;
  if (FUNC4 (FUNC3 (x), 1) == pc_rtx
      && (FUNC0 (FUNC4 (FUNC3 (x), 2)) == LABEL_REF
	  || FUNC0 (FUNC4 (FUNC3 (x), 2)) == RETURN))
    return 1;
  return 0;
}