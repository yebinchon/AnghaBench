#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct mips_cl_insn {int fixed_p; } ;
typedef  int /*<<< orphan*/  relax_substateT ;
typedef  int /*<<< orphan*/  offsetT ;
struct TYPE_3__ {scalar_t__ fr_literal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* frag_now ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mips_cl_insn*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  rs_machine_dependent ; 

__attribute__((used)) static void
FUNC4 (struct mips_cl_insn *insn, int max_chars, int var,
		  relax_substateT subtype, symbolS *symbol, offsetT offset)
{
  FUNC0 (max_chars);
  FUNC3 (insn, frag_now, FUNC1 (0) - frag_now->fr_literal);
  insn->fixed_p = 1;
  FUNC2 (rs_machine_dependent, max_chars, var,
	    subtype, symbol, offset, NULL);
}