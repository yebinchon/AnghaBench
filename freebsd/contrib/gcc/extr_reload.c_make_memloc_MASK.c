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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* reg_equiv_memory_loc ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC7 (rtx ad, int regno)
{
  /* We must rerun eliminate_regs, in case the elimination
     offsets have changed.  */
  rtx tem
    = FUNC1 (FUNC4 (reg_equiv_memory_loc[regno], 0, NULL_RTX), 0);

  /* If TEM might contain a pseudo, we must copy it to avoid
     modifying it when we do the substitution for the reload.  */
  if (FUNC6 (tem, 0))
    tem = FUNC3 (tem);

  tem = FUNC5 (reg_equiv_memory_loc[regno], tem);
  tem = FUNC2 (tem, FUNC0 (ad), 0);

  /* Copy the result if it's still the same as the equivalence, to avoid
     modifying it when we do the substitution for the reload.  */
  if (tem == reg_equiv_memory_loc[regno])
    tem = FUNC3 (tem);
  return tem;
}