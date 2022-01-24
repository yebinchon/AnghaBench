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
 int NUM_REGS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 

void
FUNC1 (void)
{
  int i;

  for (i = 0; i < NUM_REGS; i++)
    FUNC0 (i, 1);
  /* Do not assume that the pseudo-regs have also been fetched.
     Fetching all real regs NEVER accounts for pseudo-regs.  */
}