#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nargs; TYPE_1__* arg; } ;
typedef  TYPE_2__ ins ;
struct TYPE_7__ {int flags; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ r; unsigned int constant; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LD_STOR_INS_INC ; 
 int NO_RPTR ; 
 int NO_SP ; 
 scalar_t__ RA ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ arg_r ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int ins_parse ; 
 TYPE_4__* instruction ; 
 scalar_t__ ra ; 
 int sp ; 

__attribute__((used)) static void
FUNC6 (ins *insn)
{
  /* If the post-increment address mode is used and the load/store
     source register is the same as rbase, the result of the
     instruction is undefined.  */
  if (FUNC1 (LD_STOR_INS_INC))
    {
      /* Enough to verify that one of the arguments is a simple reg.  */
      if ((insn->arg[0].type == arg_r) || (insn->arg[1].type == arg_r))
        if (insn->arg[0].r == insn->arg[1].r)
          FUNC3 (FUNC2("Same src/dest register is used (`r%d'), result is undefined"), insn->arg[0].r);
    }

  if (FUNC0 ("pop")
      || FUNC0 ("push")
      || FUNC0 ("popret"))
    {
      unsigned int count = insn->arg[0].constant, reg_val;

      /* Check if count operand caused to save/retrive the RA twice
	 to generate warning message.  */
     if (insn->nargs > 2)
       {
         reg_val = FUNC5 (insn->arg[1].r);

         if (   ((reg_val == 9) &&  (count > 7))
	     || ((reg_val == 10) && (count > 6))
	     || ((reg_val == 11) && (count > 5))
	     || ((reg_val == 12) && (count > 4))
	     || ((reg_val == 13) && (count > 2))
	     || ((reg_val == 14) && (count > 0)))
           FUNC4 (FUNC2("RA register is saved twice."));

         /* Check if the third operand is "RA" or "ra" */
         if (!(((insn->arg[2].r) == ra) || ((insn->arg[2].r) == RA)))
           FUNC3 (FUNC2("`%s' Illegal use of registers."), ins_parse);
       }

      if (insn->nargs > 1)
       {
         reg_val = FUNC5 (insn->arg[1].r);

         /* If register is a register pair ie r12/r13/r14 in operand1, then
            the count constant should be validated.  */
         if (((reg_val == 11) && (count > 7))
	     || ((reg_val == 12) && (count > 6))
	     || ((reg_val == 13) && (count > 4))
	     || ((reg_val == 14) && (count > 2))
	     || ((reg_val == 15) && (count > 0)))
           FUNC3 (FUNC2("`%s' Illegal count-register combination."), ins_parse);
       }
     else
       {
         /* Check if the operand is "RA" or "ra" */
         if (!(((insn->arg[0].r) == ra) || ((insn->arg[0].r) == RA)))
           FUNC3 (FUNC2("`%s' Illegal use of register."), ins_parse);
       }
    }

  /* Some instruction assume the stack pointer as rptr operand.
     Issue an error when the register to be loaded is also SP.  */
  if (instruction->flags & NO_SP)
    {
      if (FUNC5 (insn->arg[1].r) == FUNC5 (sp))
        FUNC3 (FUNC2("`%s' has undefined result"), ins_parse);
    }

  /* If the rptr register is specified as one of the registers to be loaded,
     the final contents of rptr are undefined. Thus, we issue an error.  */
  if (instruction->flags & NO_RPTR)
    {
      if ((1 << FUNC5 (insn->arg[0].r)) & insn->arg[1].constant)
        FUNC3 (FUNC2("Same src/dest register is used (`r%d'),result is undefined"),
                  FUNC5 (insn->arg[0].r));
    }
}