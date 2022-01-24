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
 scalar_t__ DImode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEM ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 

void
FUNC4 (rtx operands[], int num, rtx lo_half[], rtx hi_half[])
{
  while (num--)
    {
      rtx op = operands[num];

      /* simplify_subreg refuse to split volatile memory addresses,
         but we still have to handle it.  */
      if (FUNC0 (op) == MEM)
	{
	  lo_half[num] = FUNC2 (op, SImode, 0);
	  hi_half[num] = FUNC2 (op, SImode, 4);
	}
      else
	{
	  lo_half[num] = FUNC3 (SImode, op,
					      FUNC1 (op) == VOIDmode
					      ? DImode : FUNC1 (op), 0);
	  hi_half[num] = FUNC3 (SImode, op,
					      FUNC1 (op) == VOIDmode
					      ? DImode : FUNC1 (op), 4);
	}
    }
}