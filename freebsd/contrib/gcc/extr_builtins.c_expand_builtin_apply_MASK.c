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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {int /*<<< orphan*/  decl; } ;
struct TYPE_4__ {scalar_t__ (* struct_value_rtx ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {TYPE_1__ calls; } ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 int BLKmode ; 
 int /*<<< orphan*/  BLOCK_OP_NORMAL ; 
 int FUNC0 (int,int) ; 
 scalar_t__ CONST_INT ; 
 int FIRST_PSEUDO_REGISTER ; 
 int FUNCTION_MODE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ HAVE_call_value ; 
 scalar_t__ HAVE_save_stack_nonlocal ; 
 scalar_t__ HAVE_untyped_call ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  MINUS ; 
 int /*<<< orphan*/  NO_DEFER_POP ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OK_DEFER_POP ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 int /*<<< orphan*/  PARM_BOUNDARY ; 
 int Pmode ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  SAVE_BLOCK ; 
 int /*<<< orphan*/  SAVE_NONLOCAL ; 
 scalar_t__ SYMBOL_REF ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int* apply_args_mode ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int* apply_result_mode ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* cfun ; 
 int /*<<< orphan*/  const0_rtx ; 
 scalar_t__ FUNC16 (int,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 scalar_t__ FUNC27 (int) ; 
 scalar_t__ FUNC28 (int,scalar_t__) ; 
 scalar_t__ FUNC29 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int,int) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 () ; 
 scalar_t__ FUNC33 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (int,scalar_t__) ; 
 scalar_t__ FUNC35 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ptr_mode ; 
 int /*<<< orphan*/  FUNC37 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 
 int /*<<< orphan*/  FUNC40 (scalar_t__*,scalar_t__) ; 
 scalar_t__ virtual_outgoing_args_rtx ; 

__attribute__((used)) static rtx
FUNC41 (rtx function, rtx arguments, rtx argsize)
{
  int size, align, regno;
  enum machine_mode mode;
  rtx incoming_args, result, reg, dest, src, call_insn;
  rtx old_stack_level = 0;
  rtx call_fusage = 0;
  rtx struct_value = targetm.calls.struct_value_rtx (cfun ? FUNC8 (cfun->decl) : 0, 0);

  arguments = FUNC16 (Pmode, arguments);

  /* Create a block where the return registers can be saved.  */
  result = FUNC15 (BLKmode, FUNC14 (), -1);

  /* Fetch the arg pointer from the ARGUMENTS block.  */
  incoming_args = FUNC27 (Pmode);
  FUNC21 (incoming_args, FUNC28 (Pmode, arguments));
#ifndef STACK_GROWS_DOWNWARD
  incoming_args = FUNC24 (Pmode, MINUS, incoming_args, argsize,
				       incoming_args, 0, OPTAB_LIB_WIDEN);
#endif

  /* Push a new argument block and copy the arguments.  Do not allow
     the (potential) memcpy call below to interfere with our stack
     manipulations.  */
  FUNC18 ();
  NO_DEFER_POP;

  /* Save the stack with nonlocal if available.  */
#ifdef HAVE_save_stack_nonlocal
  if (HAVE_save_stack_nonlocal)
    emit_stack_save (SAVE_NONLOCAL, &old_stack_level, NULL_RTX);
  else
#endif
    FUNC23 (SAVE_BLOCK, &old_stack_level, NULL_RTX);

  /* Allocate a block of memory onto the stack and copy the memory
     arguments to the outgoing arguments address.  */
  FUNC12 (argsize, 0, BITS_PER_UNIT);
  dest = virtual_outgoing_args_rtx;
#ifndef STACK_GROWS_DOWNWARD
  if (FUNC2 (argsize) == CONST_INT)
    dest = FUNC35 (dest, -FUNC6 (argsize));
  else
    dest = FUNC29 (Pmode, dest, FUNC34 (Pmode, argsize));
#endif
  dest = FUNC28 (BLKmode, dest);
  FUNC38 (dest, PARM_BOUNDARY);
  src = FUNC28 (BLKmode, incoming_args);
  FUNC38 (src, PARM_BOUNDARY);
  FUNC19 (dest, src, argsize, BLOCK_OP_NORMAL);

  /* Refer to the argument block.  */
  FUNC13 ();
  arguments = FUNC28 (BLKmode, arguments);
  FUNC38 (arguments, PARM_BOUNDARY);

  /* Walk past the arg-pointer and structure value address.  */
  size = FUNC5 (Pmode);
  if (struct_value)
    size += FUNC5 (Pmode);

  /* Restore each of the registers previously saved.  Make USE insns
     for each of these registers for use in making the call.  */
  for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
    if ((mode = apply_args_mode[regno]) != VOIDmode)
      {
	align = FUNC4 (mode) / BITS_PER_UNIT;
	if (size % align != 0)
	  size = FUNC0 (size, align) * align;
	reg = FUNC30 (mode, regno);
	FUNC21 (reg, FUNC11 (arguments, mode, size));
	FUNC40 (&call_fusage, reg);
	size += FUNC5 (mode);
      }

  /* Restore the structure value address unless this is passed as an
     "invisible" first argument.  */
  size = FUNC5 (Pmode);
  if (struct_value)
    {
      rtx value = FUNC27 (Pmode);
      FUNC21 (value, FUNC11 (arguments, Pmode, size));
      FUNC21 (struct_value, value);
      if (FUNC7 (struct_value))
	FUNC40 (&call_fusage, struct_value);
      size += FUNC5 (Pmode);
    }

  /* All arguments and registers used for the call are set up by now!  */
  function = FUNC36 (function, NULL, &call_fusage, 0, 0);

  /* Ensure address is valid.  SYMBOL_REF is already valid, so no need,
     and we don't want to load it into a register as an optimization,
     because prepare_call_address already did it if it should be done.  */
  if (FUNC2 (function) != SYMBOL_REF)
    function = FUNC33 (FUNCTION_MODE, function);

  /* Generate the actual call instruction and save the return value.  */
#ifdef HAVE_untyped_call
  if (HAVE_untyped_call)
    emit_call_insn (gen_untyped_call (gen_rtx_MEM (FUNCTION_MODE, function),
				      result, result_vector (1, result)));
  else
#endif
#ifdef HAVE_call_value
  if (HAVE_call_value)
    {
      rtx valreg = 0;

      /* Locate the unique return register.  It is not possible to
	 express a call that sets more than one return register using
	 call_value; use untyped_call for that.  In fact, untyped_call
	 only needs to save the return registers in the given block.  */
      for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
	if ((mode = apply_result_mode[regno]) != VOIDmode)
	  {
	    gcc_assert (!valreg); /* HAVE_untyped_call required.  */

	    valreg = gen_rtx_REG (mode, regno);
	  }

      emit_call_insn (GEN_CALL_VALUE (valreg,
				      gen_rtx_MEM (FUNCTION_MODE, function),
				      const0_rtx, NULL_RTX, const0_rtx));

      emit_move_insn (adjust_address (result, GET_MODE (valreg), 0), valreg);
    }
  else
#endif
    FUNC26 ();

  /* Find the CALL insn we just emitted, and attach the register usage
     information.  */
  call_insn = FUNC32 ();
  FUNC10 (call_insn, call_fusage);

  /* Restore the stack.  */
#ifdef HAVE_save_stack_nonlocal
  if (HAVE_save_stack_nonlocal)
    emit_stack_restore (SAVE_NONLOCAL, old_stack_level, NULL_RTX);
  else
#endif
    FUNC22 (SAVE_BLOCK, old_stack_level, NULL_RTX);

  OK_DEFER_POP;

  /* Return the address of the result block.  */
  result = FUNC17 (FUNC9 (result, 0));
  return FUNC16 (ptr_mode, result);
}