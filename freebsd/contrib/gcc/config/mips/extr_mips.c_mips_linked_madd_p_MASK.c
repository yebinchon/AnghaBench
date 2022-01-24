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
 scalar_t__ MINUS ; 
 scalar_t__ MULT ; 
 scalar_t__ PLUS ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

bool
FUNC5 (rtx prev, rtx insn)
{
  rtx x;

  x = FUNC4 (insn);
  if (x == 0)
    return false;

  x = FUNC1 (x);

  if (FUNC0 (x) == PLUS
      && FUNC0 (FUNC2 (x, 0)) == MULT
      && FUNC3 (FUNC2 (x, 1), prev))
    return true;

  if (FUNC0 (x) == MINUS
      && FUNC0 (FUNC2 (x, 1)) == MULT
      && FUNC3 (FUNC2 (x, 0), prev))
    return true;

  return false;
}