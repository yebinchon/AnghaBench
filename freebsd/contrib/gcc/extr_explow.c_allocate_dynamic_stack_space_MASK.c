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
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  (* insn_operand_predicate_fn ) (scalar_t__,int) ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {int preferred_stack_boundary; scalar_t__ nonlocal_goto_save_area; } ;
struct TYPE_5__ {TYPE_1__* operand; } ;
struct TYPE_4__ {int mode; int /*<<< orphan*/  (* predicate ) (scalar_t__,int) ;} ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int BIGGEST_ALIGNMENT ; 
 int BITS_PER_UNIT ; 
 scalar_t__ CODE_FOR_allocate_stack ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  GEU ; 
 scalar_t__ HAVE_allocate_stack ; 
 scalar_t__ HAVE_trap ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ MUST_ALIGN ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 int /*<<< orphan*/  OPTAB_WIDEN ; 
 int PREFERRED_STACK_BOUNDARY ; 
 scalar_t__ Pmode ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  STACK_CHECK_BUILTIN ; 
 scalar_t__ STACK_CHECK_MAX_FRAME_SIZE ; 
 scalar_t__ STACK_CHECK_PROTECT ; 
 int STACK_SIZE_MODE ; 
 int /*<<< orphan*/  TRUNC_DIV_EXPR ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  add_optab ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 TYPE_3__* cfun ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ FUNC7 (int,scalar_t__,int) ; 
 scalar_t__ FUNC8 (int,scalar_t__) ; 
 int current_function_calls_alloca ; 
 int /*<<< orphan*/  current_function_calls_setjmp ; 
 scalar_t__ current_function_limit_stack ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ flag_stack_check ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC22 () ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 TYPE_2__* insn_data ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 scalar_t__ stack_limit_rtx ; 
 int stack_pointer_delta ; 
 scalar_t__ stack_pointer_rtx ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__,int) ; 
 int /*<<< orphan*/  sub_optab ; 
 int /*<<< orphan*/  FUNC30 () ; 
 scalar_t__ virtual_stack_dynamic_rtx ; 

rtx
FUNC31 (rtx size, rtx target, int known_align)
{
  /* If we're asking for zero bytes, it doesn't matter what we point
     to since we can't dereference it.  But return a reasonable
     address anyway.  */
  if (size == const0_rtx)
    return virtual_stack_dynamic_rtx;

  /* Otherwise, show we're calling alloca or equivalent.  */
  current_function_calls_alloca = 1;

  /* Ensure the size is in the proper mode.  */
  if (FUNC2 (size) != VOIDmode && FUNC2 (size) != Pmode)
    size = FUNC7 (Pmode, size, 1);

  /* We can't attempt to minimize alignment necessary, because we don't
     know the final value of preferred_stack_boundary yet while executing
     this code.  */
  cfun->preferred_stack_boundary = PREFERRED_STACK_BOUNDARY;

  /* We will need to ensure that the address we return is aligned to
     BIGGEST_ALIGNMENT.  If STACK_DYNAMIC_OFFSET is defined, we don't
     always know its final value at this point in the compilation (it
     might depend on the size of the outgoing parameter lists, for
     example), so we must align the value to be returned in that case.
     (Note that STACK_DYNAMIC_OFFSET will have a default nonzero value if
     STACK_POINTER_OFFSET or ACCUMULATE_OUTGOING_ARGS are defined).
     We must also do an alignment operation on the returned value if
     the stack pointer alignment is less strict that BIGGEST_ALIGNMENT.

     If we have to align, we must leave space in SIZE for the hole
     that might result from the alignment operation.  */

#if defined (STACK_DYNAMIC_OFFSET) || defined (STACK_POINTER_OFFSET)
#define MUST_ALIGN 1
#else
#define MUST_ALIGN (PREFERRED_STACK_BOUNDARY < BIGGEST_ALIGNMENT)
#endif

  if (MUST_ALIGN)
    size
      = FUNC19 (FUNC26 (size,
				      BIGGEST_ALIGNMENT / BITS_PER_UNIT - 1),
		       NULL_RTX);

#ifdef SETJMP_VIA_SAVE_AREA
  /* If setjmp restores regs from a save area in the stack frame,
     avoid clobbering the reg save area.  Note that the offset of
     virtual_incoming_args_rtx includes the preallocated stack args space.
     It would be no problem to clobber that, but it's on the wrong side
     of the old save area.

     What used to happen is that, since we did not know for sure
     whether setjmp() was invoked until after RTL generation, we
     would use reg notes to store the "optimized" size and fix things
     up later.  These days we know this information before we ever
     start building RTL so the reg notes are unnecessary.  */
  if (!current_function_calls_setjmp)
    {
      int align = PREFERRED_STACK_BOUNDARY / BITS_PER_UNIT;

      /* ??? Code below assumes that the save area needs maximal
	 alignment.  This constraint may be too strong.  */
      gcc_assert (PREFERRED_STACK_BOUNDARY == BIGGEST_ALIGNMENT);

      if (GET_CODE (size) == CONST_INT)
	{
	  HOST_WIDE_INT new = INTVAL (size) / align * align;

	  if (INTVAL (size) != new)
	    size = GEN_INT (new);
	}
      else
	{
	  /* Since we know overflow is not possible, we avoid using
	     CEIL_DIV_EXPR and use TRUNC_DIV_EXPR instead.  */
	  size = expand_divmod (0, TRUNC_DIV_EXPR, Pmode, size,
				GEN_INT (align), NULL_RTX, 1);
	  size = expand_mult (Pmode, size,
			      GEN_INT (align), NULL_RTX, 1);
	}
    }
  else
    {
      rtx dynamic_offset
	= expand_binop (Pmode, sub_optab, virtual_stack_dynamic_rtx,
			stack_pointer_rtx, NULL_RTX, 1, OPTAB_LIB_WIDEN);

      size = expand_binop (Pmode, add_optab, size, dynamic_offset,
			   NULL_RTX, 1, OPTAB_LIB_WIDEN);
    }
#endif /* SETJMP_VIA_SAVE_AREA */

  /* Round the size to a multiple of the required stack alignment.
     Since the stack if presumed to be rounded before this allocation,
     this will maintain the required alignment.

     If the stack grows downward, we could save an insn by subtracting
     SIZE from the stack pointer and then aligning the stack pointer.
     The problem with this is that the stack pointer may be unaligned
     between the execution of the subtraction and alignment insns and
     some machines do not allow this.  Even on those that do, some
     signal handlers malfunction if a signal should occur between those
     insns.  Since this is an extremely rare event, we have no reliable
     way of knowing which systems have this problem.  So we avoid even
     momentarily mis-aligning the stack.  */

  /* If we added a variable amount to SIZE,
     we can no longer assume it is aligned.  */
#if !defined (SETJMP_VIA_SAVE_AREA)
  if (MUST_ALIGN || known_align % PREFERRED_STACK_BOUNDARY != 0)
#endif
    size = FUNC28 (size);

  FUNC9 ();

 /* We ought to be called always on the toplevel and stack ought to be aligned
    properly.  */
  FUNC20 (!(stack_pointer_delta
		% (PREFERRED_STACK_BOUNDARY / BITS_PER_UNIT)));

  /* If needed, check that we have the required amount of stack.  Take into
     account what has already been checked.  */
  if (flag_stack_check && ! STACK_CHECK_BUILTIN)
    FUNC27 (STACK_CHECK_MAX_FRAME_SIZE + STACK_CHECK_PROTECT, size);

  /* Don't use a TARGET that isn't a pseudo or is the wrong mode.  */
  if (target == 0 || !FUNC5 (target)
      || FUNC4 (target) < FIRST_PSEUDO_REGISTER
      || FUNC2 (target) != Pmode)
    target = FUNC23 (Pmode);

  FUNC25 (target, known_align);

  /* Perform the required allocation from the stack.  Some systems do
     this differently than simply incrementing/decrementing from the
     stack pointer, such as acquiring the space by calling malloc().  */
#ifdef HAVE_allocate_stack
  if (HAVE_allocate_stack)
    {
      enum machine_mode mode = STACK_SIZE_MODE;
      insn_operand_predicate_fn pred;

      /* We don't have to check against the predicate for operand 0 since
	 TARGET is known to be a pseudo of the proper mode, which must
	 be valid for the operand.  For operand 1, convert to the
	 proper mode and validate.  */
      if (mode == VOIDmode)
	mode = insn_data[(int) CODE_FOR_allocate_stack].operand[1].mode;

      pred = insn_data[(int) CODE_FOR_allocate_stack].operand[1].predicate;
      if (pred && ! ((*pred) (size, mode)))
	size = copy_to_mode_reg (mode, convert_to_mode (mode, size, 1));

      emit_insn (gen_allocate_stack (target, size));
    }
  else
#endif
    {
#ifndef STACK_GROWS_DOWNWARD
      FUNC14 (target, virtual_stack_dynamic_rtx);
#endif

      /* Check stack bounds if necessary.  */
      if (current_function_limit_stack)
	{
	  rtx available;
	  rtx space_available = FUNC22 ();
#ifdef STACK_GROWS_DOWNWARD
	  available = expand_binop (Pmode, sub_optab,
				    stack_pointer_rtx, stack_limit_rtx,
				    NULL_RTX, 1, OPTAB_WIDEN);
#else
	  available = FUNC16 (Pmode, sub_optab,
				    stack_limit_rtx, stack_pointer_rtx,
				    NULL_RTX, 1, OPTAB_WIDEN);
#endif
	  FUNC11 (available, size, GEU, NULL_RTX, Pmode, 1,
				   space_available);
#ifdef HAVE_trap
	  if (HAVE_trap)
	    emit_insn (gen_trap ());
	  else
#endif
	    FUNC15 ("stack limits not supported on this target");
	  FUNC10 ();
	  FUNC13 (space_available);
	}

      FUNC6 (size);

#ifdef STACK_GROWS_DOWNWARD
      emit_move_insn (target, virtual_stack_dynamic_rtx);
#endif
    }

  if (MUST_ALIGN)
    {
      /* CEIL_DIV_EXPR needs to worry about the addition overflowing,
	 but we know it can't.  So add ourselves and then do
	 TRUNC_DIV_EXPR.  */
      target = FUNC16 (Pmode, add_optab, target,
			     FUNC0 (BIGGEST_ALIGNMENT / BITS_PER_UNIT - 1),
			     NULL_RTX, 1, OPTAB_LIB_WIDEN);
      target = FUNC17 (0, TRUNC_DIV_EXPR, Pmode, target,
			      FUNC0 (BIGGEST_ALIGNMENT / BITS_PER_UNIT),
			      NULL_RTX, 1);
      target = FUNC18 (Pmode, target,
			    FUNC0 (BIGGEST_ALIGNMENT / BITS_PER_UNIT),
			    NULL_RTX, 1);
    }

  /* Record the new stack level for nonlocal gotos.  */
  if (cfun->nonlocal_goto_save_area != 0)
    FUNC30 ();

  return target;
}