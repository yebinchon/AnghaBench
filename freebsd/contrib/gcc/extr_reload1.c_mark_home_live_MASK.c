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

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int** hard_regno_nregs ; 
 int* reg_renumber ; 
 int* regs_ever_live ; 

void
FUNC1 (int regno)
{
  int i, lim;

  i = reg_renumber[regno];
  if (i < 0)
    return;
  lim = i + hard_regno_nregs[i][FUNC0 (regno)];
  while (i < lim)
    regs_ever_live[i++] = 1;
}