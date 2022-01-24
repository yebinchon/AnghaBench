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
struct loop {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEIL_DIV_EXPR ; 
 int /*<<< orphan*/  EXACT_DIV_EXPR ; 
 int /*<<< orphan*/  GT_EXPR ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ boolean_false_node ; 
 scalar_t__ boolean_true_node ; 
 int /*<<< orphan*/  boolean_type_node ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ integer_one_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 scalar_t__ integer_zero_node ; 
 int /*<<< orphan*/  FUNC7 (struct loop*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  unsigned_type_node ; 

__attribute__((used)) static void
FUNC8 (struct loop *loop, 
				  tree opnd0, 
				  tree access_fn, 
				  tree stmt)
{
  tree estimation = NULL_TREE;
  tree array_size, data_size, element_size;
  tree init, step;

  init = FUNC6 (access_fn);
  step = FUNC3 (access_fn, loop->num);

  array_size = FUNC2 (FUNC1 (opnd0));
  element_size = FUNC2 (FUNC1 (FUNC1 (opnd0)));
  if (array_size == NULL_TREE 
      || FUNC0 (array_size) != INTEGER_CST
      || FUNC0 (element_size) != INTEGER_CST)
    return;

  data_size = FUNC5 (EXACT_DIV_EXPR, integer_type_node,
			   array_size, element_size);

  if (init != NULL_TREE
      && step != NULL_TREE
      && FUNC0 (init) == INTEGER_CST
      && FUNC0 (step) == INTEGER_CST)
    {
      tree i_plus_s = FUNC5 (PLUS_EXPR, integer_type_node, init, step);
      tree sign = FUNC4 (GT_EXPR, boolean_type_node, i_plus_s, init);

      if (sign == boolean_true_node)
	estimation = FUNC5 (CEIL_DIV_EXPR, integer_type_node,
				  FUNC5 (MINUS_EXPR, integer_type_node,
					       data_size, init), step);

      /* When the step is negative, as in PR23386: (init = 3, step =
	 0ffffffff, data_size = 100), we have to compute the
	 estimation as ceil_div (init, 0 - step) + 1.  */
      else if (sign == boolean_false_node)
	estimation = 
	  FUNC5 (PLUS_EXPR, integer_type_node,
		       FUNC5 (CEIL_DIV_EXPR, integer_type_node,
				    init,
				    FUNC5 (MINUS_EXPR, unsigned_type_node,
						 integer_zero_node, step)),
		       integer_one_node);

      if (estimation)
	FUNC7 (loop, estimation, boolean_true_node, stmt);
    }
}