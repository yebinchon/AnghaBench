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
typedef  int /*<<< orphan*/  tsubst_flags_t ;
typedef  int /*<<< orphan*/ * tree ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ TREE_LIST ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * void_list_node ; 
 int /*<<< orphan*/ * void_type_node ; 

__attribute__((used)) static tree
FUNC7 (tree t, tree args, tsubst_flags_t complain,
			  tree in_decl)
{
#define RECUR(t) tsubst_copy_asm_operands (t, args, complain, in_decl)

  tree purpose, value, chain;

  if (t == NULL)
    return t;

  if (FUNC2 (t) != TREE_LIST)
    return FUNC6 (t, args, complain, in_decl,
				  /*function_p=*/false,
				  /*integral_constant_expression_p=*/false);

  if (t == void_list_node)
    return t;

  purpose = FUNC3 (t);
  if (purpose)
    purpose = RECUR (purpose);
  value = FUNC4 (t);
  if (value)
    value = RECUR (value);
  chain = FUNC1 (t);
  if (chain && chain != void_type_node)
    chain = RECUR (chain);
  return FUNC5 (purpose, value, chain);
#undef RECUR
}