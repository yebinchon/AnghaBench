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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  NOTE_EXPECTED_VALUE ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  NOTE_INSN_EXPECTED_VALUE ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_guess_branch_prob ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ integer_zero_node ; 

__attribute__((used)) static rtx
FUNC10 (tree arglist, rtx target)
{
  tree exp, c;
  rtx note, rtx_c;

  if (arglist == NULL_TREE
      || FUNC2 (arglist) == NULL_TREE)
    return const0_rtx;
  exp = FUNC4 (arglist);
  c = FUNC4 (FUNC2 (arglist));

  if (FUNC3 (c) != INTEGER_CST)
    {
      FUNC6 ("second argument to %<__builtin_expect%> must be a constant");
      c = integer_zero_node;
    }

  target = FUNC7 (exp, target, VOIDmode, EXPAND_NORMAL);

  /* Don't bother with expected value notes for integral constants.  */
  if (flag_guess_branch_prob && FUNC0 (target) != CONST_INT)
    {
      /* We do need to force this into a register so that we can be
	 moderately sure to be able to correctly interpret the branch
	 condition later.  */
      target = FUNC8 (FUNC1 (target), target);

      rtx_c = FUNC7 (c, NULL_RTX, FUNC1 (target), EXPAND_NORMAL);

      note = FUNC5 (NOTE_INSN_EXPECTED_VALUE);
      NOTE_EXPECTED_VALUE (note) = FUNC9 (VOIDmode, target, rtx_c);
    }

  return target;
}