#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_6__ {int n_operands; int n_alternatives; TYPE_1__* operand; scalar_t__ n_dups; } ;
struct TYPE_5__ {int n_operands; int n_alternatives; char** constraints; int /*<<< orphan*/ * operand_type; int /*<<< orphan*/ * operand; int /*<<< orphan*/ * operand_mode; scalar_t__ n_dups; int /*<<< orphan*/  operand_loc; int /*<<< orphan*/ * insn; } ;
struct TYPE_4__ {char* constraint; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
#define  ADDR_DIFF_VEC 135 
#define  ADDR_VEC 134 
#define  ASM_INPUT 133 
#define  ASM_OPERANDS 132 
#define  CLOBBER 131 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_RECOG_ALTERNATIVES ; 
 int MAX_RECOG_OPERANDS ; 
 int /*<<< orphan*/  OP_IN ; 
 int /*<<< orphan*/  OP_INOUT ; 
 int /*<<< orphan*/  OP_OUT ; 
#define  PARALLEL 130 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  SET 129 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  USE 128 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_3__* insn_data ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__ recog_data ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int which_alternative ; 

void
FUNC11 (rtx insn)
{
  int i;
  int icode;
  int noperands;
  rtx body = FUNC2 (insn);

  recog_data.insn = NULL;
  recog_data.n_operands = 0;
  recog_data.n_alternatives = 0;
  recog_data.n_dups = 0;
  which_alternative = -1;

  switch (FUNC0 (body))
    {
    case USE:
    case CLOBBER:
    case ASM_INPUT:
    case ADDR_VEC:
    case ADDR_DIFF_VEC:
      return;

    case SET:
      if (FUNC0 (FUNC3 (body)) == ASM_OPERANDS)
	goto asm_insn;
      else
	goto normal_insn;
    case PARALLEL:
      if ((FUNC0 (FUNC4 (body, 0, 0)) == SET
	   && FUNC0 (FUNC3 (FUNC4 (body, 0, 0))) == ASM_OPERANDS)
	  || FUNC0 (FUNC4 (body, 0, 0)) == ASM_OPERANDS)
	goto asm_insn;
      else
	goto normal_insn;
    case ASM_OPERANDS:
    asm_insn:
      recog_data.n_operands = noperands = FUNC5 (body);
      if (noperands >= 0)
	{
	  /* This insn is an `asm' with operands.  */

	  /* expand_asm_operands makes sure there aren't too many operands.  */
	  FUNC8 (noperands <= MAX_RECOG_OPERANDS);

	  /* Now get the operand values and constraints out of the insn.  */
	  FUNC6 (body, recog_data.operand,
			       recog_data.operand_loc,
			       recog_data.constraints,
			       recog_data.operand_mode);
	  if (noperands > 0)
	    {
	      const char *p =  recog_data.constraints[0];
	      recog_data.n_alternatives = 1;
	      while (*p)
		recog_data.n_alternatives += (*p++ == ',');
	    }
	  break;
	}
      FUNC7 (insn);

    default:
    normal_insn:
      /* Ordinary insn: recognize it, get the operands via insn_extract
	 and get the constraints.  */

      icode = FUNC10 (insn);
      if (icode < 0)
	FUNC7 (insn);

      recog_data.n_operands = noperands = insn_data[icode].n_operands;
      recog_data.n_alternatives = insn_data[icode].n_alternatives;
      recog_data.n_dups = insn_data[icode].n_dups;

      FUNC9 (insn);

      for (i = 0; i < noperands; i++)
	{
	  recog_data.constraints[i] = insn_data[icode].operand[i].constraint;
	  recog_data.operand_mode[i] = insn_data[icode].operand[i].mode;
	  /* VOIDmode match_operands gets mode from their real operand.  */
	  if (recog_data.operand_mode[i] == VOIDmode)
	    recog_data.operand_mode[i] = FUNC1 (recog_data.operand[i]);
	}
    }
  for (i = 0; i < noperands; i++)
    recog_data.operand_type[i]
      = (recog_data.constraints[i][0] == '=' ? OP_OUT
	 : recog_data.constraints[i][0] == '+' ? OP_INOUT
	 : OP_IN);

  FUNC8 (recog_data.n_alternatives <= MAX_RECOG_ALTERNATIVES);
}