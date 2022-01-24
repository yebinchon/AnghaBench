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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int BITS_PER_UNIT ; 
 int /*<<< orphan*/  BLKmode ; 
 int FUNC0 (int,int) ; 
 int FIRST_PSEUDO_REGISTER ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ HAVE_untyped_return ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  Pmode ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int* apply_result_mode ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20 (rtx result)
{
  int size, align, regno;
  enum machine_mode mode;
  rtx reg;
  rtx call_fusage = 0;

  result = FUNC6 (Pmode, result);

  FUNC5 ();
  result = FUNC13 (BLKmode, result);

#ifdef HAVE_untyped_return
  if (HAVE_untyped_return)
    {
      emit_jump_insn (gen_untyped_return (result, result_vector (0, result)));
      emit_barrier ();
      return;
    }
#endif

  /* Restore the return value and note that each value is used.  */
  size = 0;
  for (regno = 0; regno < FIRST_PSEUDO_REGISTER; regno++)
    if ((mode = apply_result_mode[regno]) != VOIDmode)
      {
	align = FUNC1 (mode) / BITS_PER_UNIT;
	if (size % align != 0)
	  size = FUNC0 (size, align) * align;
	reg = FUNC14 (mode, FUNC3 (regno));
	FUNC10 (reg, FUNC4 (result, mode, size));

	FUNC18 (call_fusage);
	FUNC8 (FUNC15 (VOIDmode, reg));
	call_fusage = FUNC17 ();
	FUNC11 ();
	size += FUNC2 (mode);
      }

  /* Put the USE insns before the return.  */
  FUNC8 (call_fusage);

  /* Return whatever values was restored by jumping directly to the end
     of the function.  */
  FUNC12 ();
}