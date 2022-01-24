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
typedef  enum tls_model { ____Placeholder_tls_model } tls_model ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ CONST ; 
 scalar_t__ CONST_DOUBLE ; 
 int DImode ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ MACHOPIC_INDIRECT ; 
 scalar_t__ MACHOPIC_PURE ; 
 scalar_t__ MEM ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 scalar_t__ PLUS ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int Pmode ; 
 scalar_t__ REG ; 
 scalar_t__ SYMBOL_REF ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ TARGET_MACHO ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_pic ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int,scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 scalar_t__ FUNC16 (scalar_t__,int) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC18 (scalar_t__,int,int) ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ optimize ; 
 scalar_t__ FUNC21 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ reload_in_progress ; 
 scalar_t__ FUNC23 (scalar_t__,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC26 (enum machine_mode mode, rtx operands[])
{
  int strict = (reload_in_progress || reload_completed);
  rtx op0, op1;
  enum tls_model model;

  op0 = operands[0];
  op1 = operands[1];

  if (FUNC1 (op1) == SYMBOL_REF)
    {
      model = FUNC4 (op1);
      if (model)
	{
	  op1 = FUNC18 (op1, model, true);
	  op1 = FUNC11 (op1, op0);
	  if (op1 == op0)
	    return;
	}
    }
  else if (FUNC1 (op1) == CONST
	   && FUNC1 (FUNC5 (op1, 0)) == PLUS
	   && FUNC1 (FUNC5 (FUNC5 (op1, 0), 0)) == SYMBOL_REF)
    {
      model = FUNC4 (FUNC5 (FUNC5 (op1, 0), 0));
      if (model)
	{
	  rtx addend = FUNC5 (FUNC5 (op1, 0), 1);
	  op1 = FUNC18 (FUNC5 (FUNC5 (op1, 0), 0), model, true);
	  op1 = FUNC11 (op1, NULL);
	  op1 = FUNC9 (Pmode, PLUS, op1, addend,
				     op0, 1, OPTAB_DIRECT);
	  if (op1 == op0)
	    return;
	}
    }

  if (flag_pic && mode == Pmode && FUNC23 (op1, Pmode))
    {
      if (TARGET_MACHO && !TARGET_64BIT)
	{
#if TARGET_MACHO
	  if (MACHOPIC_PURE)
	    {
	      rtx temp = ((reload_in_progress
			   || ((op0 && GET_CODE (op0) == REG)
			       && mode == Pmode))
			  ? op0 : gen_reg_rtx (Pmode));
	      op1 = machopic_indirect_data_reference (op1, temp);
	      op1 = machopic_legitimize_pic_address (op1, mode,
						     temp == op1 ? 0 : temp);
	    }
	  else if (MACHOPIC_INDIRECT)
	    op1 = machopic_indirect_data_reference (op1, 0);
	  if (op0 == op1)
	    return;
#endif
	}
      else
	{
	  if (FUNC1 (op0) == MEM)
	    op1 = FUNC12 (Pmode, op1);
	  else
	    op1 = FUNC17 (op1, op1, Pmode);
	}
    }
  else
    {
      if (FUNC1 (op0) == MEM
	  && (FUNC3 (FUNC2 (mode)) != FUNC2 (mode)
	      || !FUNC21 (op0, mode))
	  && FUNC1 (op1) == MEM)
	op1 = FUNC12 (mode, op1);

      if (FUNC21 (op0, mode)
	  && ! FUNC15 (op1, mode))
	op1 = FUNC6 (mode, op1);

      /* Force large constants in 64bit compilation into register
	 to get them CSEed.  */
      if (TARGET_64BIT && mode == DImode
	  && FUNC16 (op1, mode)
	  && !FUNC25 (op1, VOIDmode)
	  && !FUNC22 (op0, mode)
	  && optimize && !reload_completed && !reload_in_progress)
	op1 = FUNC6 (mode, op1);

      if (FUNC0 (mode))
	{
	  /* If we are loading a floating point constant to a register,
	     force the value to memory now, since we'll get better code
	     out the back end.  */

	  if (strict)
	    ;
	  else if (FUNC1 (op1) == CONST_DOUBLE)
	    {
	      op1 = FUNC24 (FUNC10 (mode, op1));
	      if (!FUNC22 (op0, mode))
		{
		  rtx temp = FUNC13 (mode);
		  FUNC7 (FUNC14 (VOIDmode, temp, op1));
		  FUNC8 (op0, temp);
		  return;
		}
	    }
	}
    }

  FUNC7 (FUNC14 (VOIDmode, op0, op1));
}