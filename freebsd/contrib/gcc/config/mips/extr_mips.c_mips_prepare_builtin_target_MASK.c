#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum insn_code { ____Placeholder_insn_code } insn_code ;
struct TYPE_4__ {TYPE_1__* operand; } ;
struct TYPE_3__ {int mode; int /*<<< orphan*/  (* predicate ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* insn_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rtx
FUNC2 (enum insn_code icode, unsigned int op, rtx target)
{
  enum machine_mode mode;

  mode = insn_data[icode].operand[op].mode;
  if (target == 0 || !insn_data[icode].operand[op].predicate (target, mode))
    target = FUNC0 (mode);

  return target;
}