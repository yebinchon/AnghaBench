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
typedef  scalar_t__ rtx ;
typedef  int RTX_CODE ;

/* Variables and functions */
#define  CC0 145 
#define  CLOBBER 144 
#define  COND_EXEC 143 
#define  CONST_INT 142 
 int const FUNC0 (scalar_t__) ; 
 char* FUNC1 (int const) ; 
 int FUNC2 (int const) ; 
#define  IF_THEN_ELSE 141 
#define  LABEL_REF 140 
#define  LO_SUM 139 
#define  MATCH_DUP 138 
#define  MATCH_OPERAND 137 
#define  MATCH_OPERATOR 136 
#define  MATCH_OP_DUP 135 
#define  MATCH_PARALLEL 134 
#define  MATCH_PAR_DUP 133 
#define  MATCH_SCRATCH 132 
#define  PC 131 
#define  REG 130 
#define  SET 129 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
#define  SYMBOL_REF 128 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__,int,int) ; 
 int FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  clobbers_seen_this_insn ; 
 int /*<<< orphan*/  dup_operands_seen_this_insn ; 
 int have_cc0_flag ; 
 int have_cmove_flag ; 
 int have_cond_exec_flag ; 
 int have_lo_sum_flag ; 
 int /*<<< orphan*/  max_recog_operands ; 

__attribute__((used)) static void
FUNC10 (rtx part, int recog_p, int non_pc_set_src)
{
  int i, j;
  RTX_CODE code;
  const char *format_ptr;

  if (part == 0)
    return;

  code = FUNC0 (part);
  switch (code)
    {
    case CLOBBER:
      clobbers_seen_this_insn++;
      break;

    case MATCH_OPERAND:
      if (FUNC6 (part, 0) > max_recog_operands)
	max_recog_operands = FUNC6 (part, 0);
      return;

    case MATCH_OP_DUP:
    case MATCH_PAR_DUP:
      ++dup_operands_seen_this_insn;
    case MATCH_SCRATCH:
    case MATCH_PARALLEL:
    case MATCH_OPERATOR:
      if (FUNC6 (part, 0) > max_recog_operands)
	max_recog_operands = FUNC6 (part, 0);
      /* Now scan the rtl's in the vector inside the MATCH_OPERATOR or
	 MATCH_PARALLEL.  */
      break;

    case LABEL_REF:
      if (FUNC0 (FUNC5 (part, 0)) == MATCH_OPERAND
	  || FUNC0 (FUNC5 (part, 0)) == MATCH_DUP)
	break;
      return;

    case MATCH_DUP:
      ++dup_operands_seen_this_insn;
      if (FUNC6 (part, 0) > max_recog_operands)
	max_recog_operands = FUNC6 (part, 0);
      return;

    case CC0:
      if (recog_p)
	have_cc0_flag = 1;
      return;

    case LO_SUM:
      if (recog_p)
	have_lo_sum_flag = 1;
      return;

    case SET:
      FUNC10 (FUNC3 (part), 0, recog_p);
      FUNC10 (FUNC4 (part), recog_p,
		      FUNC0 (FUNC3 (part)) != PC);
      return;

    case IF_THEN_ELSE:
      /* Only consider this machine as having a conditional move if the
	 two arms of the IF_THEN_ELSE are both MATCH_OPERAND.  Otherwise,
	 we have some specific IF_THEN_ELSE construct (like the doz
	 instruction on the RS/6000) that can't be used in the general
	 context we want it for.  */

      if (recog_p && non_pc_set_src
	  && FUNC0 (FUNC5 (part, 1)) == MATCH_OPERAND
	  && FUNC0 (FUNC5 (part, 2)) == MATCH_OPERAND)
	have_cmove_flag = 1;
      break;

    case COND_EXEC:
      if (recog_p)
	have_cond_exec_flag = 1;
      break;

    case REG: case CONST_INT: case SYMBOL_REF:
    case PC:
      return;

    default:
      break;
    }

  format_ptr = FUNC1 (FUNC0 (part));

  for (i = 0; i < FUNC2 (FUNC0 (part)); i++)
    switch (*format_ptr++)
      {
      case 'e':
      case 'u':
	FUNC10 (FUNC5 (part, i), recog_p, non_pc_set_src);
	break;
      case 'E':
	if (FUNC7 (part, i) != NULL)
	  for (j = 0; j < FUNC9 (part, i); j++)
	    FUNC10 (FUNC8 (part, i, j), recog_p, non_pc_set_src);
	break;
      }
}