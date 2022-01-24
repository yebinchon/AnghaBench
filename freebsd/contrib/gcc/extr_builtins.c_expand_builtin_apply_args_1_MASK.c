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
struct TYPE_4__ {scalar_t__ (* struct_value_rtx ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_5__ {TYPE_1__ calls; } ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 int /*<<< orphan*/  BLKmode ; 
 int FUNC0 (int,int) ; 
 int FIRST_PSEUDO_REGISTER ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int Pmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int) ; 
 int* apply_args_mode ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* cfun ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  current_function_pretend_args_size ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__ targetm ; 
 scalar_t__ virtual_incoming_args_rtx ; 

__attribute__((used)) static rtx
FUNC17 (void)
{
  rtx registers, tem;
  int size, align, regno;
  enum machine_mode mode;
  rtx struct_incoming_value = targetm.calls.struct_value_rtx (cfun ? FUNC4 (cfun->decl) : 0, 1);

  /* Create a block where the arg-pointer, structure value address,
     and argument registers can be saved.  */
  registers = FUNC8 (BLKmode, FUNC7 (), -1);

  /* Walk past the arg-pointer and structure value address.  */
  size = FUNC2 (Pmode);
  if (targetm.calls.struct_value_rtx (cfun ? FUNC4 (cfun->decl) : 0, 0))
    size += FUNC2 (Pmode);

  /* Save each register used in calling a function to the block.  */
  for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
    if ((mode = apply_args_mode[regno]) != VOIDmode)
      {
	align = FUNC1 (mode) / BITS_PER_UNIT;
	if (size % align != 0)
	  size = FUNC0 (size, align) * align;

	tem = FUNC13 (mode, FUNC3 (regno));

	FUNC11 (FUNC6 (registers, mode, size), tem);
	size += FUNC2 (mode);
      }

  /* Save the arg pointer to the block.  */
  tem = FUNC10 (virtual_incoming_args_rtx);
#ifdef STACK_GROWS_DOWNWARD
  /* We need the pointer as the caller actually passed them to us, not
     as we might have pretended they were passed.  Make sure it's a valid
     operand, as emit_move_insn isn't expected to handle a PLUS.  */
  tem
    = force_operand (plus_constant (tem, current_function_pretend_args_size),
		     NULL_RTX);
#endif
  FUNC11 (FUNC6 (registers, Pmode, 0), tem);

  size = FUNC2 (Pmode);

  /* Save the structure value address unless this is passed as an
     "invisible" first argument.  */
  if (struct_incoming_value)
    {
      FUNC11 (FUNC6 (registers, Pmode, size),
		      FUNC10 (struct_incoming_value));
      size += FUNC2 (Pmode);
    }

  /* Return the address of the block.  */
  return FUNC9 (FUNC5 (registers, 0));
}