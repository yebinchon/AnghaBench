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
typedef  int rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ MEM ; 
 scalar_t__ REG ; 
 int FUNC1 (int) ; 
 scalar_t__ SUBREG ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int) ; 

int
FUNC6 (rtx producer, rtx consumer)
{
  rtx dest, reg, mem;

  FUNC3 (producer && consumer);
  dest = FUNC4 (producer);
  FUNC3 (dest);
  reg = FUNC1 (dest);
  FUNC3 (reg);
  if (FUNC0 (reg) == SUBREG)
    reg = FUNC2 (reg);
  FUNC3 (FUNC0 (reg) == REG);
  
  dest = FUNC4 (consumer);
  FUNC3 (dest);
  mem = FUNC1 (dest);
  FUNC3 (mem && FUNC0 (mem) == MEM);
  return FUNC5 (reg, mem);
}