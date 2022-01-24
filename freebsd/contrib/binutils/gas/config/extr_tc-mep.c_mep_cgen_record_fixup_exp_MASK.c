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
typedef  int /*<<< orphan*/  fragS ;
typedef  int /*<<< orphan*/  fixS ;
typedef  int /*<<< orphan*/  expressionS ;
typedef  int /*<<< orphan*/  CGEN_OPERAND ;
typedef  int /*<<< orphan*/  CGEN_INSN ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 

fixS *
FUNC1 (fragS *frag,
			   int where,
			   const CGEN_INSN *insn,
			   int length,
			   const CGEN_OPERAND *operand,
			   int opinfo,
			   expressionS *exp)
{
  fixS * fixP = FUNC0 (frag, where, insn, length,
					   operand, opinfo, exp);
  return fixP;
}