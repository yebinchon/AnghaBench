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
struct costs {int mem_cost; int* cost; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
#define  CC0 141 
#define  CONST 140 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CONST_DOUBLE ; 
#define  CONST_INT 139 
 size_t FIRST_PSEUDO_REGISTER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int INDEX_REG_CLASS ; 
#define  LABEL_REF 138 
 int MAX_REGS_PER_ADDRESS ; 
 int FUNC4 (size_t,int,int) ; 
 int MULT ; 
 int N_REG_CLASSES ; 
#define  PC 137 
#define  PLUS 136 
#define  POST_DEC 135 
#define  POST_INC 134 
#define  POST_MODIFY 133 
#define  PRE_DEC 132 
#define  PRE_INC 131 
#define  PRE_MODIFY 130 
 size_t Pmode ; 
#define  REG 129 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int SCRATCH ; 
 int SUBREG ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
#define  SYMBOL_REF 128 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,int const,int) ; 
 struct costs* costs ; 
 int* in_inc_dec ; 
 int*** may_move_in_cost ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int const,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (enum machine_mode mode, rtx x, int context,
		     enum rtx_code outer_code, enum rtx_code index_code,
		     int scale)
{
  enum rtx_code code = FUNC1 (x);
  enum reg_class class;

  if (context == 1)
    class = INDEX_REG_CLASS;
  else
    class = FUNC10 (mode, outer_code, index_code);

  switch (code)
    {
    case CONST_INT:
    case CONST:
    case CC0:
    case PC:
    case SYMBOL_REF:
    case LABEL_REF:
      return;

    case PLUS:
      /* When we have an address that is a sum,
	 we must determine whether registers are "base" or "index" regs.
	 If there is a sum of two registers, we must choose one to be
	 the "base".  Luckily, we can use the REG_POINTER to make a good
	 choice most of the time.  We only need to do this on machines
	 that can have two registers in an address and where the base
	 and index register classes are different.

	 ??? This code used to set REGNO_POINTER_FLAG in some cases, but
	 that seems bogus since it should only be set when we are sure
	 the register is being used as a pointer.  */

      {
	rtx arg0 = FUNC9 (x, 0);
	rtx arg1 = FUNC9 (x, 1);
	enum rtx_code code0 = FUNC1 (arg0);
	enum rtx_code code1 = FUNC1 (arg1);

	/* Look inside subregs.  */
	if (code0 == SUBREG)
	  arg0 = FUNC8 (arg0), code0 = FUNC1 (arg0);
	if (code1 == SUBREG)
	  arg1 = FUNC8 (arg1), code1 = FUNC1 (arg1);

	/* If this machine only allows one register per address, it must
	   be in the first operand.  */

	if (MAX_REGS_PER_ADDRESS == 1)
	  FUNC13 (mode, arg0, 0, PLUS, code1, scale);

	/* If index and base registers are the same on this machine, just
	   record registers in any non-constant operands.  We assume here,
	   as well as in the tests below, that all addresses are in
	   canonical form.  */

	else if (INDEX_REG_CLASS == FUNC10 (VOIDmode, PLUS, SCRATCH))
	  {
	    FUNC13 (mode, arg0, context, PLUS, code1, scale);
	    if (! FUNC0 (arg1))
	      FUNC13 (mode, arg1, context, PLUS, code0, scale);
	  }

	/* If the second operand is a constant integer, it doesn't change
	   what class the first operand must be.  */

	else if (code1 == CONST_INT || code1 == CONST_DOUBLE)
	  FUNC13 (mode, arg0, context, PLUS, code1, scale);

	/* If the second operand is a symbolic constant, the first operand
	   must be an index register.  */

	else if (code1 == SYMBOL_REF || code1 == CONST || code1 == LABEL_REF)
	  FUNC13 (mode, arg0, 1, PLUS, code1, scale);

	/* If both operands are registers but one is already a hard register
	   of index or reg-base class, give the other the class that the
	   hard register is not.  */

	else if (code0 == REG && code1 == REG
		 && FUNC5 (arg0) < FIRST_PSEUDO_REGISTER
		 && (FUNC11 (arg0, mode, PLUS, REG)
		     || FUNC12 (arg0)))
	  FUNC13 (mode, arg1,
			       FUNC11 (arg0, mode, PLUS, REG)
			       ? 1 : 0,
			       PLUS, REG, scale);
	else if (code0 == REG && code1 == REG
		 && FUNC5 (arg1) < FIRST_PSEUDO_REGISTER
		 && (FUNC11 (arg1, mode, PLUS, REG)
		     || FUNC12 (arg1)))
	  FUNC13 (mode, arg0,
			       FUNC11 (arg1, mode, PLUS, REG)
			       ? 1 : 0,
			       PLUS, REG, scale);

	/* If one operand is known to be a pointer, it must be the base
	   with the other operand the index.  Likewise if the other operand
	   is a MULT.  */

	else if ((code0 == REG && FUNC7 (arg0))
		 || code1 == MULT)
	  {
	    FUNC13 (mode, arg0, 0, PLUS, code1, scale);
	    FUNC13 (mode, arg1, 1, PLUS, code0, scale);
	  }
	else if ((code1 == REG && FUNC7 (arg1))
		 || code0 == MULT)
	  {
	    FUNC13 (mode, arg0, 1, PLUS, code1, scale);
	    FUNC13 (mode, arg1, 0, PLUS, code0, scale);
	  }

	/* Otherwise, count equal chances that each might be a base
	   or index register.  This case should be rare.  */

	else
	  {
	    FUNC13 (mode, arg0, 0, PLUS, code1, scale / 2);
	    FUNC13 (mode, arg0, 1, PLUS, code1, scale / 2);
	    FUNC13 (mode, arg1, 0, PLUS, code0, scale / 2);
	    FUNC13 (mode, arg1, 1, PLUS, code0, scale / 2);
	  }
      }
      break;

      /* Double the importance of a pseudo register that is incremented
	 or decremented, since it would take two extra insns
	 if it ends up in the wrong place.  */
    case POST_MODIFY:
    case PRE_MODIFY:
      FUNC13 (mode, FUNC9 (x, 0), 0, code,
			   FUNC1 (FUNC9 (FUNC9 (x, 1), 1)), 2 * scale);
      if (FUNC6 (FUNC9 (FUNC9 (x, 1), 1)))
	FUNC13 (mode, FUNC9 (FUNC9 (x, 1), 1), 1, code, REG,
			     2 * scale);
      break;

    case POST_INC:
    case PRE_INC:
    case POST_DEC:
    case PRE_DEC:
      /* Double the importance of a pseudo register that is incremented
	 or decremented, since it would take two extra insns
	 if it ends up in the wrong place.  If the operand is a pseudo,
	 show it is being used in an INC_DEC context.  */

#ifdef FORBIDDEN_INC_DEC_CLASSES
      if (REG_P (XEXP (x, 0))
	  && REGNO (XEXP (x, 0)) >= FIRST_PSEUDO_REGISTER)
	in_inc_dec[REGNO (XEXP (x, 0))] = 1;
#endif

      FUNC13 (mode, FUNC9 (x, 0), 0, code, SCRATCH, 2 * scale);
      break;

    case REG:
      {
	struct costs *pp = &costs[FUNC5 (x)];
	int i;

	pp->mem_cost += (FUNC4 (Pmode, class, 1) * scale) / 2;

	for (i = 0; i < N_REG_CLASSES; i++)
	  pp->cost[i] += (may_move_in_cost[Pmode][i][(int) class] * scale) / 2;
      }
      break;

    default:
      {
	const char *fmt = FUNC2 (code);
	int i;
	for (i = FUNC3 (code) - 1; i >= 0; i--)
	  if (fmt[i] == 'e')
	    FUNC13 (mode, FUNC9 (x, i), context, code, SCRATCH,
				 scale);
      }
    }
}