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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  elem_op_func ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static tree
FUNC7 (block_stmt_iterator *bsi,
			elem_op_func f, elem_op_func f_parallel,
			tree type, tree a, tree b, enum tree_code code)
{
  int parts_per_word = UNITS_PER_WORD
	  	       / FUNC6 (FUNC2 (FUNC1 (type)), 1);

  if (FUNC0 (FUNC1 (type))
      && parts_per_word >= 4
      && FUNC3 (type) >= 4)
    return FUNC4 (bsi, f_parallel,
				   type, a, b, code);
  else
    return FUNC5 (bsi, f,
				    type, FUNC1 (type),
				    a, b, code);
}