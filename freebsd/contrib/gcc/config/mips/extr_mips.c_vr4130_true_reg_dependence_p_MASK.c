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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  vr4130_last_insn ; 
 int /*<<< orphan*/  vr4130_true_reg_dependence_p_1 ; 

__attribute__((used)) static bool
FUNC2 (rtx insn)
{
  FUNC1 (FUNC0 (vr4130_last_insn),
	       vr4130_true_reg_dependence_p_1, &insn);
  return insn == 0;
}