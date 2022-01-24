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
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ rtx ;
struct TYPE_4__ {int /*<<< orphan*/  stack_protect_guard; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* stack_protect_fail ) () ;int /*<<< orphan*/  (* stack_protect_guard ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EQ ; 
 scalar_t__ HAVE_stack_protect_test ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  PRED_NORETURN ; 
 int /*<<< orphan*/  TAKEN ; 
 TYPE_2__* cfun ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptr_mode ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_1__ targetm ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

void
FUNC13 (void)
{
  tree guard_decl = targetm.stack_protect_guard ();
  rtx label = FUNC6 ();
  rtx x, y, tmp;

  /* Avoid expand_expr here, because we don't want guard_decl pulled
     into registers unless absolutely necessary.  And we know that
     cfun->stack_protect_guard is a local stack slot, so this skips
     all the fluff.  */
  x = FUNC12 (FUNC0 (cfun->stack_protect_guard));
  y = FUNC12 (FUNC0 (guard_decl));

  /* Allow the target to compare Y with X without leaking either into
     a register.  */
  if (HAVE_stack_protect_test != 0)
    {
      tmp = FUNC7 (x, y, label);
      if (tmp)
	{
	  FUNC3 (tmp);
	  goto done;
	}
    }

  FUNC2 (x, y, EQ, NULL_RTX, ptr_mode, 1, label);
 done:

  /* The noreturn predictor has been moved to the tree level.  The rtl-level
     predictors estimate this branch about 20%, which isn't enough to get
     things moved out of line.  Since this is the only extant case of adding
     a noreturn function at the rtl level, it doesn't seem worth doing ought
     except adding the prediction by hand.  */
  tmp = FUNC8 ();
  if (FUNC1 (tmp))
    FUNC9 (tmp, PRED_NORETURN, TAKEN);

  FUNC5 (targetm.stack_protect_fail ());
  FUNC4 (label);
}