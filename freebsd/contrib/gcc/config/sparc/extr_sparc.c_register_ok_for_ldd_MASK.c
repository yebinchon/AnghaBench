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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2 (rtx reg)
{
  /* We might have been passed a SUBREG.  */
  if (FUNC0 (reg) != REG) 
    return 0;

  if (FUNC1 (reg) < FIRST_PSEUDO_REGISTER)
    return (FUNC1 (reg) % 2 == 0);
  else 
    return 1;
}