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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__) ; 

void
FUNC5 (rtx *call_fusage, rtx regs)
{
  int i;

  for (i = 0; i < FUNC3 (regs, 0); i++)
    {
      rtx reg = FUNC1 (FUNC2 (regs, 0, i), 0);

      /* A NULL entry means the parameter goes both on the stack and in
	 registers.  This can also be a MEM for targets that pass values
	 partially on the stack and partially in registers.  */
      if (reg != 0 && FUNC0 (reg))
	FUNC4 (call_fusage, reg);
    }
}