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
struct TYPE_3__ {unsigned int reg1; unsigned int reg2; } ;
struct TYPE_4__ {TYPE_1__ rr; } ;
struct cfi_insn_data {int insn; TYPE_2__ u; } ;

/* Variables and functions */
 struct cfi_insn_data* FUNC0 () ; 

__attribute__((used)) static void
FUNC1 (int insn, unsigned reg1, unsigned reg2)
{
  struct cfi_insn_data *insn_ptr = FUNC0 ();

  insn_ptr->insn = insn;
  insn_ptr->u.rr.reg1 = reg1;
  insn_ptr->u.rr.reg2 = reg2;
}