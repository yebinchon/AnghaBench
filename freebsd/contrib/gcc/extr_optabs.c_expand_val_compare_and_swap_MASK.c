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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum insn_code { ____Placeholder_insn_code } insn_code ;

/* Variables and functions */
 int CODE_FOR_nothing ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int* sync_compare_and_swap ; 

rtx
FUNC2 (rtx mem, rtx old_val, rtx new_val, rtx target)
{
  enum machine_mode mode = FUNC0 (mem);
  enum insn_code icode = sync_compare_and_swap[mode];

  if (icode == CODE_FOR_nothing)
    return NULL_RTX;

  return FUNC1 (mem, old_val, new_val, target, icode);
}