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
struct noce_if_info {scalar_t__ cond_earliest; scalar_t__ jump; int /*<<< orphan*/  cond; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GEU ; 
 int GTU ; 
 int LEU ; 
 int LTU ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static rtx
FUNC11 (struct noce_if_info *if_info, rtx x, enum rtx_code code,
		 rtx cmp_a, rtx cmp_b, rtx vfalse, rtx vtrue)
{
  /* If earliest == jump, try to build the cmove insn directly.
     This is helpful when combine has created some complex condition
     (like for alpha's cmovlbs) that we can't hope to regenerate
     through the normal interface.  */

  if (if_info->cond_earliest == if_info->jump)
    {
      rtx tmp;

      tmp = FUNC6 (code, FUNC0 (if_info->cond), cmp_a, cmp_b);
      tmp = FUNC4 (FUNC0 (x), tmp, vtrue, vfalse);
      tmp = FUNC5 (VOIDmode, x, tmp);

      FUNC10 ();
      tmp = FUNC2 (tmp);

      if (FUNC9 (tmp) >= 0)
	{
	  tmp = FUNC8 ();
	  FUNC3 ();
	  FUNC2 (tmp);

	  return x;
	}

      FUNC3 ();
    }

  /* Don't even try if the comparison operands are weird.  */
  if (! FUNC7 (cmp_a, FUNC0 (cmp_a))
      || ! FUNC7 (cmp_b, FUNC0 (cmp_b)))
    return NULL_RTX;

#if HAVE_conditional_move
  return emit_conditional_move (x, code, cmp_a, cmp_b, VOIDmode,
				vtrue, vfalse, GET_MODE (x),
			        (code == LTU || code == GEU
				 || code == LEU || code == GTU));
#else
  /* We'll never get here, as noce_process_if_block doesn't call the
     functions involved.  Ifdef code, however, should be discouraged
     because it leads to typos in the code not selected.  However,
     emit_conditional_move won't exist either.  */
  return NULL_RTX;
#endif
}