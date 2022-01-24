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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * regno_reg_rtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2 (rtx *call_fusage, int regno, int nregs)
{
  int i;

  FUNC0 (regno + nregs <= FIRST_PSEUDO_REGISTER);

  for (i = 0; i < nregs; i++)
    FUNC1 (call_fusage, regno_reg_rtx[regno + i]);
}