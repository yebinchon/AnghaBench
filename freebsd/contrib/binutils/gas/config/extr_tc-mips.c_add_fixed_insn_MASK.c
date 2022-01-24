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
struct mips_cl_insn {int dummy; } ;
struct TYPE_3__ {int fr_literal; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* frag_now ; 
 int /*<<< orphan*/  FUNC1 (struct mips_cl_insn*) ; 
 int /*<<< orphan*/  FUNC2 (struct mips_cl_insn*,TYPE_1__*,char*) ; 

__attribute__((used)) static void
FUNC3 (struct mips_cl_insn *insn)
{
  char *f = FUNC0 (FUNC1 (insn));
  FUNC2 (insn, frag_now, f - frag_now->fr_literal);
}