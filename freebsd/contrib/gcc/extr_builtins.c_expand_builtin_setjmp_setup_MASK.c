#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int /*<<< orphan*/  (* builtin_setjmp_frame_value ) () ;} ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ HAVE_builtin_setjmp_setup ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int Pmode ; 
 int /*<<< orphan*/  SAVE_NONLOCAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int current_function_calls_setjmp ; 
 int current_function_has_nonlocal_label ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int setjmp_alias_set ; 
 int /*<<< orphan*/  FUNC14 () ; 
 TYPE_1__ targetm ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void
FUNC16 (rtx buf_addr, rtx receiver_label)
{
  enum machine_mode sa_mode = FUNC1 (SAVE_NONLOCAL);
  rtx stack_save;
  rtx mem;

  if (setjmp_alias_set == -1)
    setjmp_alias_set = FUNC11 ();

  buf_addr = FUNC2 (Pmode, buf_addr);

  buf_addr = FUNC7 (Pmode, FUNC6 (buf_addr, NULL_RTX));

  /* We store the frame pointer and the address of receiver_label in
     the buffer and use the rest of it for the stack save area, which
     is machine-dependent.  */

  mem = FUNC10 (Pmode, buf_addr);
  FUNC13 (mem, setjmp_alias_set);
  FUNC4 (mem, targetm.builtin_setjmp_frame_value ());

  mem = FUNC10 (Pmode, FUNC12 (buf_addr, FUNC0 (Pmode))),
  FUNC13 (mem, setjmp_alias_set);

  FUNC4 (FUNC15 (mem),
		  FUNC7 (Pmode, FUNC9 (Pmode, receiver_label)));

  stack_save = FUNC10 (sa_mode,
			    FUNC12 (buf_addr,
					   2 * FUNC0 (Pmode)));
  FUNC13 (stack_save, setjmp_alias_set);
  FUNC5 (SAVE_NONLOCAL, &stack_save, NULL_RTX);

  /* If there is further processing to do, do it.  */
#ifdef HAVE_builtin_setjmp_setup
  if (HAVE_builtin_setjmp_setup)
    emit_insn (gen_builtin_setjmp_setup (buf_addr));
#endif

  /* Tell optimize_save_area_alloca that extra work is going to
     need to go on during alloca.  */
  current_function_calls_setjmp = 1;

  /* Set this so all the registers get saved in our frame; we need to be
     able to copy the saved values for any registers from frames we unwind.  */
  current_function_has_nonlocal_label = 1;
}