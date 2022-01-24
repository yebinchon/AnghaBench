#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mips_cl_insn {TYPE_1__* insn_mo; } ;
struct TYPE_6__ {scalar_t__ X_op; } ;
typedef  TYPE_2__ expressionS ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ HAVE_32BIT_GPRS ; 
 scalar_t__ O_big ; 
 scalar_t__ O_constant ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3 (struct mips_cl_insn *ip, expressionS *ex)
{
  if (ex->X_op == O_big)
    FUNC1 (FUNC0("unsupported large constant"));
  else if (ex->X_op != O_constant)
    FUNC1 (FUNC0("Instruction %s requires absolute expression"),
	    ip->insn_mo->name);

  if (HAVE_32BIT_GPRS)
    FUNC2 (ex);
}