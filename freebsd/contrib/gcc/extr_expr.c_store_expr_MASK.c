#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  scalar_t__ rtx ;
struct TYPE_3__ {int /*<<< orphan*/  (* type_for_mode ) (scalar_t__,int) ;int /*<<< orphan*/  (* signed_or_unsigned_type ) (int,scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ types; int /*<<< orphan*/  reduce_bit_field_operations; } ;

/* Variables and functions */
 scalar_t__ BLKmode ; 
 int /*<<< orphan*/  BLOCK_OP_CALL_PARM ; 
 int /*<<< orphan*/  BLOCK_OP_NORMAL ; 
 scalar_t__ COMPOUND_EXPR ; 
 scalar_t__ COND_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ ERROR_MARK ; 
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 int /*<<< orphan*/  EXPAND_STACK_PARM ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  LT ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  MIN_EXPR ; 
 int /*<<< orphan*/  NO_DEFER_POP ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  OK_DEFER_POP ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ Pmode ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ STRING_CST ; 
 scalar_t__ SUBREG ; 
 int FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 scalar_t__ VOIDmode ; 
 scalar_t__ FUNC21 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC23 (scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC25 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC34 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC35 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC37 (scalar_t__) ; 
 scalar_t__ FUNC38 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC39 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC40 (int) ; 
 int /*<<< orphan*/  FUNC41 (scalar_t__) ; 
 scalar_t__ FUNC42 () ; 
 int /*<<< orphan*/  FUNC43 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC44 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC45 (scalar_t__,scalar_t__) ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC46 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC47 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC48 (scalar_t__,scalar_t__) ; 
 scalar_t__ ptr_mode ; 
 scalar_t__ FUNC49 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC50 (scalar_t__) ; 
 scalar_t__ FUNC51 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (scalar_t__) ; 
 scalar_t__ sizetype ; 
 int /*<<< orphan*/  FUNC53 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC54 (scalar_t__,int) ; 
 int /*<<< orphan*/  sub_optab ; 

rtx
FUNC55 (tree exp, rtx target, int call_param_p)
{
  rtx temp;
  rtx alt_rtl = NULL_RTX;
  int dont_return_target = 0;

  if (FUNC20 (FUNC16 (exp)))
    {
      /* C++ can generate ?: expressions with a throw expression in one
	 branch and an rvalue in the other. Here, we resolve attempts to
	 store the throw expression's nonexistent result.  */
      FUNC40 (!call_param_p);
      FUNC35 (exp, const0_rtx, VOIDmode, 0);
      return NULL_RTX;
    }
  if (FUNC13 (exp) == COMPOUND_EXPR)
    {
      /* Perform first part of compound expression, then assign from second
	 part.  */
      FUNC35 (FUNC14 (exp, 0), const0_rtx, VOIDmode,
		   call_param_p ? EXPAND_STACK_PARM : EXPAND_NORMAL);
      return FUNC55 (FUNC14 (exp, 1), target, call_param_p);
    }
  else if (FUNC13 (exp) == COND_EXPR && FUNC2 (target) == BLKmode)
    {
      /* For conditional expression, get safe form of the target.  Then
	 test the condition, doing the appropriate assignment on either
	 side.  This avoids the creation of unnecessary temporaries.
	 For non-BLKmode, it is more efficient not to do this.  */

      rtx lab1 = FUNC42 (), lab2 = FUNC42 ();

      FUNC26 ();
      NO_DEFER_POP;
      FUNC45 (FUNC14 (exp, 0), lab1);
      FUNC55 (FUNC14 (exp, 1), target, call_param_p);
      FUNC31 (FUNC41 (lab2));
      FUNC27 ();
      FUNC32 (lab1);
      FUNC55 (FUNC14 (exp, 2), target, call_param_p);
      FUNC32 (lab2);
      OK_DEFER_POP;

      return NULL_RTX;
    }
  else if (FUNC1 (target) == SUBREG && FUNC11 (target))
    /* If this is a scalar in a register that is stored in a wider mode
       than the declared mode, compute the result into its declared mode
       and then convert to the wider mode.  Our value is the computed
       expression.  */
    {
      rtx inner_target = 0;

      /* We can do the conversion inside EXP, which will often result
	 in some optimizations.  Do the conversion in two steps: first
	 change the signedness, if needed, then the extend.  But don't
	 do this if the type of EXP is a subtype of something else
	 since then the conversion might involve more than just
	 converting modes.  */
      if (FUNC4 (FUNC16 (exp))
	  && FUNC16 (FUNC16 (exp)) == 0
	  && (!lang_hooks.reduce_bit_field_operations
	      || (FUNC3 (FUNC2 (target))
		  == FUNC18 (FUNC16 (exp)))))
	{
	  if (FUNC19 (FUNC16 (exp))
	      != FUNC10 (target))
	    exp = FUNC38
	      (lang_hooks.types.signed_or_unsigned_type
	       (FUNC10 (target), FUNC16 (exp)), exp);

	  exp = FUNC38 (lang_hooks.types.type_for_mode
				(FUNC2 (FUNC12 (target)),
				 FUNC10 (target)),
			      exp);

	  inner_target = FUNC12 (target);
	}

      temp = FUNC35 (exp, inner_target, VOIDmode,
			  call_param_p ? EXPAND_STACK_PARM : EXPAND_NORMAL);

      /* If TEMP is a VOIDmode constant, use convert_modes to make
	 sure that we properly convert it.  */
      if (FUNC0 (temp) && FUNC2 (temp) == VOIDmode)
	{
	  temp = FUNC23 (FUNC2 (target), FUNC17 (FUNC16 (exp)),
				temp, FUNC10 (target));
	  temp = FUNC23 (FUNC2 (FUNC12 (target)),
			        FUNC2 (target), temp,
			        FUNC10 (target));
	}

      FUNC24 (FUNC12 (target), temp,
		    FUNC10 (target));

      return NULL_RTX;
    }
  else
    {
      temp = FUNC36 (exp, target, FUNC2 (target),
			       (call_param_p
				? EXPAND_STACK_PARM : EXPAND_NORMAL),
			       &alt_rtl);
      /* Return TARGET if it's a specified hardware register.
	 If TARGET is a volatile mem ref, either return TARGET
	 or return a reg copied *from* TARGET; ANSI requires this.

	 Otherwise, if TEMP is not TARGET, return TEMP
	 if it is constant (for efficiency),
	 or if we really want the correct value.  */
      if (!(target && FUNC9 (target)
	    && FUNC8 (target) < FIRST_PSEUDO_REGISTER)
	  && !(FUNC6 (target) && FUNC7 (target))
	  && ! FUNC49 (temp, target)
	  && FUNC0 (temp))
	dont_return_target = 1;
    }

  /* If TEMP is a VOIDmode constant and the mode of the type of EXP is not
     the same as that of TARGET, adjust the constant.  This is needed, for
     example, in case it is a CONST_DOUBLE and we want only a word-sized
     value.  */
  if (FUNC0 (temp) && FUNC2 (temp) == VOIDmode
      && FUNC13 (exp) != ERROR_MARK
      && FUNC2 (target) != FUNC17 (FUNC16 (exp)))
    temp = FUNC23 (FUNC2 (target), FUNC17 (FUNC16 (exp)),
			  temp, FUNC19 (FUNC16 (exp)));

  /* If value was not generated in the target, store it there.
     Convert the value to TARGET's type first if necessary and emit the
     pending incrementations that have been queued when expanding EXP.
     Note that we cannot emit the whole queue blindly because this will
     effectively disable the POST_INC optimization later.

     If TEMP and TARGET compare equal according to rtx_equal_p, but
     one or both of them are volatile memory refs, we have to distinguish
     two cases:
     - expand_expr has used TARGET.  In this case, we must not generate
       another copy.  This can be detected by TARGET being equal according
       to == .
     - expand_expr has not used TARGET - that means that the source just
       happens to have the same RTX form.  Since temp will have been created
       by expand_expr, it will compare unequal according to == .
       We must generate a copy in this case, to reach the correct number
       of volatile memory references.  */

  if ((! FUNC49 (temp, target)
       || (temp != target && (FUNC50 (temp)
			      || FUNC50 (target))))
      && FUNC13 (exp) != ERROR_MARK
      /* If store_expr stores a DECL whose DECL_RTL(exp) == TARGET,
	 but TARGET is not valid memory reference, TEMP will differ
	 from TARGET although it is really the same location.  */
      && !(alt_rtl && FUNC49 (alt_rtl, target))
      /* If there's nothing to copy, don't bother.  Don't call
	 expr_size unless necessary, because some front-ends (C++)
	 expr_size-hook must not be given objects that are not
	 supposed to be bit-copied or bit-initialized.  */
      && FUNC37 (exp) != const0_rtx)
    {
      if (FUNC2 (temp) != FUNC2 (target)
	  && FUNC2 (temp) != VOIDmode)
	{
	  int unsignedp = FUNC19 (FUNC16 (exp));
	  if (dont_return_target)
	    {
	      /* In this case, we will return TEMP,
		 so make sure it has the proper mode.
		 But don't forget to store the value into TARGET.  */
	      temp = FUNC25 (FUNC2 (target), temp, unsignedp);
	      FUNC33 (target, temp);
	    }
	  else if (FUNC2 (target) == BLKmode)
	    FUNC28 (target, temp, FUNC37 (exp),
			     (call_param_p
			      ? BLOCK_OP_CALL_PARM
			      : BLOCK_OP_NORMAL));
	  else
	    FUNC24 (target, temp, unsignedp);
	}

      else if (FUNC2 (temp) == BLKmode && FUNC13 (exp) == STRING_CST)
	{
	  /* Handle copying a string constant into an array.  The string
	     constant may be shorter than the array.  So copy just the string's
	     actual length, and clear the rest.  First get the size of the data
	     type of the string, which is actually the size of the target.  */
	  rtx size = FUNC37 (exp);

	  if (FUNC1 (size) == CONST_INT
	      && FUNC5 (size) < FUNC15 (exp))
	    FUNC28 (target, temp, size,
			     (call_param_p
			      ? BLOCK_OP_CALL_PARM : BLOCK_OP_NORMAL));
	  else
	    {
	      /* Compute the size of the data to copy from the string.  */
	      tree copy_size
		= FUNC51 (MIN_EXPR,
			      FUNC46 (sizetype, size),
			      FUNC52 (FUNC15 (exp)));
	      rtx copy_size_rtx
		= FUNC35 (copy_size, NULL_RTX, VOIDmode,
			       (call_param_p
				? EXPAND_STACK_PARM : EXPAND_NORMAL));
	      rtx label = 0;

	      /* Copy that much.  */
	      copy_size_rtx = FUNC25 (ptr_mode, copy_size_rtx,
					       FUNC19 (sizetype));
	      FUNC28 (target, temp, copy_size_rtx,
			       (call_param_p
				? BLOCK_OP_CALL_PARM : BLOCK_OP_NORMAL));

	      /* Figure out how much is left in TARGET that we have to clear.
		 Do all calculations in ptr_mode.  */
	      if (FUNC1 (copy_size_rtx) == CONST_INT)
		{
		  size = FUNC48 (size, -FUNC5 (copy_size_rtx));
		  target = FUNC21 (target, BLKmode,
					   FUNC5 (copy_size_rtx));
		}
	      else
		{
		  size = FUNC34 (FUNC17 (sizetype), sub_optab, size,
				       copy_size_rtx, NULL_RTX, 0,
				       OPTAB_LIB_WIDEN);

#ifdef POINTERS_EXTEND_UNSIGNED
		  if (GET_MODE (copy_size_rtx) != Pmode)
		    copy_size_rtx = convert_to_mode (Pmode, copy_size_rtx,
						     TYPE_UNSIGNED (sizetype));
#endif

		  target = FUNC47 (target, copy_size_rtx,
					   FUNC43 (copy_size));
		  label = FUNC42 ();
		  FUNC29 (size, const0_rtx, LT, NULL_RTX,
					   FUNC2 (size), 0, label);
		}

	      if (size != const0_rtx)
		FUNC22 (target, size, BLOCK_OP_NORMAL);

	      if (label)
		FUNC32 (label);
	    }
	}
      /* Handle calls that return values in multiple non-contiguous locations.
	 The Irix 6 ABI has examples of this.  */
      else if (FUNC1 (target) == PARALLEL)
	FUNC30 (target, temp, FUNC16 (exp),
			 FUNC44 (FUNC16 (exp)));
      else if (FUNC2 (temp) == BLKmode)
	FUNC28 (target, temp, FUNC37 (exp),
			 (call_param_p
			  ? BLOCK_OP_CALL_PARM : BLOCK_OP_NORMAL));
      else
	{
	  temp = FUNC39 (temp, target);
	  if (temp != target)
	    FUNC33 (target, temp);
	}
    }

  return NULL_RTX;
}