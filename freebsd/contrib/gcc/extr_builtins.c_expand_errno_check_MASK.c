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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  EQ ; 
 int /*<<< orphan*/  GEN_ERRNO_RTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_DEFER_POP ; 
 int /*<<< orphan*/  OK_DEFER_POP ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  TARGET_EDOM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  word_mode ; 

__attribute__((used)) static void
FUNC11 (tree exp, rtx target)
{
  rtx lab = FUNC8 ();

  /* Test the result; if it is NaN, set errno=EDOM because
     the argument was not in the domain.  */
  FUNC4 (target, target, EQ, 0, FUNC1 (target),
			   0, lab);

#ifdef TARGET_EDOM
  /* If this built-in doesn't throw an exception, set errno directly.  */
  if (TREE_NOTHROW (TREE_OPERAND (TREE_OPERAND (exp, 0), 0)))
    {
#ifdef GEN_ERRNO_RTX
      rtx errno_rtx = GEN_ERRNO_RTX;
#else
      rtx errno_rtx
	  = gen_rtx_MEM (word_mode, gen_rtx_SYMBOL_REF (Pmode, "errno"));
#endif
      emit_move_insn (errno_rtx, GEN_INT (TARGET_EDOM));
      emit_label (lab);
      return;
    }
#endif

  /* We can't set errno=EDOM directly; let the library call do it.
     Pop the arguments right away in case the call gets deleted.  */
  NO_DEFER_POP;
  FUNC7 (exp, target, 0);
  OK_DEFER_POP;
  FUNC5 (lab);
}