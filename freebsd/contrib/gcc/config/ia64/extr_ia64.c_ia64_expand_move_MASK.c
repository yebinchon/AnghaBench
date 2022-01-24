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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum tls_model { ____Placeholder_tls_model } tls_model ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST ; 
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_DIRECT ; 
 scalar_t__ PLUS ; 
 int Pmode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ no_new_pseudos ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int ptr_mode ; 
 scalar_t__ reload_completed ; 
 int /*<<< orphan*/  reload_in_progress ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 

rtx
FUNC19 (rtx op0, rtx op1)
{
  enum machine_mode mode = FUNC2 (op0);

  if (!reload_in_progress && !reload_completed && !FUNC15 (op0, op1))
    op1 = FUNC9 (mode, op1);

  if ((mode == Pmode || mode == ptr_mode) && FUNC17 (op1, VOIDmode))
    {
      HOST_WIDE_INT addend = 0;
      enum tls_model tls_kind;
      rtx sym = op1;

      if (FUNC1 (op1) == CONST
	  && FUNC1 (FUNC4 (op1, 0)) == PLUS
	  && FUNC1 (FUNC4 (FUNC4 (op1, 0), 1)) == CONST_INT)
	{
	  addend = FUNC3 (FUNC4 (FUNC4 (op1, 0), 1));
	  sym = FUNC4 (FUNC4 (op1, 0), 0);
	}

      tls_kind = FUNC18 (sym);
      if (tls_kind)
	return FUNC14 (tls_kind, op0, sym, op1, addend);

      if (FUNC6 (sym, mode))
	addend = 0;
      else if (FUNC5 (sym, mode))
	{
	  HOST_WIDE_INT addend_lo, addend_hi;
	      
	  addend_lo = ((addend & 0x3fff) ^ 0x2000) - 0x2000;
	  addend_hi = addend - addend_lo;

	  if (addend_lo != 0)
	    {
	      op1 = FUNC16 (sym, addend_hi);
	      addend = addend_lo;
	    }
	  else
	    addend = 0;
	}
      else
	op1 = sym;

      if (reload_completed)
	{
	  /* We really should have taken care of this offset earlier.  */
	  FUNC10 (addend == 0);
	  if (FUNC13 (op0, op1))
	    return NULL_RTX;
	}

      if (addend)
	{
	  rtx subtarget = no_new_pseudos ? op0 : FUNC11 (mode);

	  FUNC7 (FUNC12 (VOIDmode, subtarget, op1));

	  op1 = FUNC8 (mode, PLUS, subtarget,
				     FUNC0 (addend), op0, 1, OPTAB_DIRECT);
	  if (op0 == op1)
	    return NULL_RTX;
	}
    }

  return op1;
}