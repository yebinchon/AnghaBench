#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * rtx ;
typedef  enum attr_type { ____Placeholder_attr_type } attr_type ;
struct TYPE_2__ {int n_operands; scalar_t__* operand_type; int /*<<< orphan*/ ** operand; } ;

/* Variables and functions */
 scalar_t__ CALL_INSN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MEM ; 
 scalar_t__ OP_IN ; 
 scalar_t__ REG_DEP_ANTI ; 
 scalar_t__ REG_DEP_OUTPUT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ SYMBOL_REF ; 
 int TYPE_ALU_SHIFT ; 
 int TYPE_ALU_SHIFT_REG ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ arm_tune_xscale ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  frame_pointer_rtx ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hard_frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__ recog_data ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

__attribute__((used)) static int
FUNC14 (rtx insn, rtx link, rtx dep, int cost)
{
  rtx i_pat, d_pat;

  /* Some true dependencies can have a higher cost depending
     on precisely how certain input operands are used.  */
  if (arm_tune_xscale
      && FUNC2 (link) == 0
      && FUNC10 (insn) >= 0
      && FUNC10 (dep) >= 0)
    {
      int shift_opnum = FUNC7 (insn);
      enum attr_type attr_type = FUNC8 (dep);

      /* If nonzero, SHIFT_OPNUM contains the operand number of a shifted
	 operand for INSN.  If we have a shifted input operand and the
	 instruction we depend on is another ALU instruction, then we may
	 have to account for an additional stall.  */
      if (shift_opnum != 0
	  && (attr_type == TYPE_ALU_SHIFT || attr_type == TYPE_ALU_SHIFT_REG))
	{
	  rtx shifted_operand;
	  int opno;

	  /* Get the shifted operand.  */
	  FUNC6 (insn);
	  shifted_operand = recog_data.operand[shift_opnum];

	  /* Iterate over all the operands in DEP.  If we write an operand
	     that overlaps with SHIFTED_OPERAND, then we have increase the
	     cost of this dependency.  */
	  FUNC6 (dep);
	  FUNC9 ();
	  for (opno = 0; opno < recog_data.n_operands; opno++)
	    {
	      /* We can ignore strict inputs.  */
	      if (recog_data.operand_type[opno] == OP_IN)
		continue;

	      if (FUNC12 (recog_data.operand[opno],
					   shifted_operand))
		return 2;
	    }
	}
    }

  /* XXX This is not strictly true for the FPA.  */
  if (FUNC2 (link) == REG_DEP_ANTI
      || FUNC2 (link) == REG_DEP_OUTPUT)
    return 0;

  /* Call insns don't incur a stall, even if they follow a load.  */
  if (FUNC2 (link) == 0
      && FUNC1 (insn) == CALL_INSN)
    return 1;

  if ((i_pat = FUNC13 (insn)) != NULL
      && FUNC1 (FUNC4 (i_pat)) == MEM
      && (d_pat = FUNC13 (dep)) != NULL
      && FUNC1 (FUNC3 (d_pat)) == MEM)
    {
      rtx src_mem = FUNC5 (FUNC4 (i_pat), 0);
      /* This is a load after a store, there is no conflict if the load reads
	 from a cached area.  Assume that loads from the stack, and from the
	 constant pool are cached, and that others will miss.  This is a
	 hack.  */

      if ((FUNC1 (src_mem) == SYMBOL_REF && FUNC0 (src_mem))
	  || FUNC11 (stack_pointer_rtx, src_mem)
	  || FUNC11 (frame_pointer_rtx, src_mem)
	  || FUNC11 (hard_frame_pointer_rtx, src_mem))
	return 1;
    }

  return cost;
}