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
struct case_node {int /*<<< orphan*/  high; int /*<<< orphan*/  low; int /*<<< orphan*/  code_label; struct case_node* right; } ;
struct case_bit_test {scalar_t__ label; unsigned int hi; unsigned int lo; int bits; } ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  struct case_node* case_node_ptr ;
typedef  unsigned int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  GTU ; 
 unsigned int HOST_BITS_PER_INT ; 
 unsigned int HOST_BITS_PER_WIDE_INT ; 
 int MAX_CASE_BIT_TESTS ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  NE ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OPTAB_WIDEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  and_optab ; 
 int /*<<< orphan*/  ashl_optab ; 
 int /*<<< orphan*/  case_bit_test_cmp ; 
 scalar_t__ const0_rtx ; 
 scalar_t__ const1_rtx ; 
 scalar_t__ FUNC1 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct case_bit_test*,unsigned int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ,int) ; 
 int word_mode ; 

__attribute__((used)) static void
FUNC14 (tree index_type, tree index_expr, tree minval,
		     tree range, case_node_ptr nodes, rtx default_label)
{
  struct case_bit_test test[MAX_CASE_BIT_TESTS];
  enum machine_mode mode;
  rtx expr, index, label;
  unsigned int i,j,lo,hi;
  struct case_node *n;
  unsigned int count;

  count = 0;
  for (n = nodes; n; n = n->right)
    {
      label = FUNC11 (n->code_label);
      for (i = 0; i < count; i++)
	if (label == test[i].label)
	  break;

      if (i == count)
	{
	  FUNC9 (count < MAX_CASE_BIT_TESTS);
	  test[i].hi = 0;
	  test[i].lo = 0;
	  test[i].label = label;
	  test[i].bits = 1;
	  count++;
	}
      else
        test[i].bits++;

      lo = FUNC13 (FUNC7 (MINUS_EXPR, index_type,
				      n->low, minval), 1);
      hi = FUNC13 (FUNC7 (MINUS_EXPR, index_type,
				      n->high, minval), 1);
      for (j = lo; j <= hi; j++)
        if (j >= HOST_BITS_PER_WIDE_INT)
	  test[i].hi |= (HOST_WIDE_INT) 1 << (j - HOST_BITS_PER_INT);
	else
	  test[i].lo |= (HOST_WIDE_INT) 1 << j;
    }

  FUNC12 (test, count, sizeof(*test), case_bit_test_cmp);

  index_expr = FUNC7 (MINUS_EXPR, index_type,
			    FUNC8 (index_type, index_expr),
			    FUNC8 (index_type, minval));
  index = FUNC6 (index_expr);
  FUNC2 ();

  mode = FUNC0 (index_type);
  expr = FUNC6 (range);
  FUNC3 (index, expr, GTU, NULL_RTX, mode, 1,
			   default_label);

  index = FUNC1 (word_mode, index, 0);
  index = FUNC5 (word_mode, ashl_optab, const1_rtx,
			index, NULL_RTX, 1, OPTAB_WIDEN);

  for (i = 0; i < count; i++)
    {
      expr = FUNC10 (test[i].lo, test[i].hi, word_mode);
      expr = FUNC5 (word_mode, and_optab, index, expr,
			   NULL_RTX, 1, OPTAB_WIDEN);
      FUNC3 (expr, const0_rtx, NE, NULL_RTX,
			       word_mode, 1, test[i].label);
    }

  FUNC4 (default_label);
}