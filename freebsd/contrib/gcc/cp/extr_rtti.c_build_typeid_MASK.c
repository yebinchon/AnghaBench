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

/* Variables and functions */
 int /*<<< orphan*/  COND_EXPR ; 
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  TYPEID_EXPR ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  boolean_type_node ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  const_type_info_type_node ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ processing_template_decl ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

tree
FUNC12 (tree exp)
{
  tree cond = NULL_TREE;
  int nonnull = 0;

  if (exp == error_mark_node || !FUNC11 ())
    return error_mark_node;

  if (processing_template_decl)
    return FUNC5 (TYPEID_EXPR, const_type_info_type_node, exp);

  if (FUNC0 (exp) == INDIRECT_REF
      && FUNC0 (FUNC2 (FUNC1 (exp, 0))) == POINTER_TYPE
      && FUNC3 (FUNC2 (exp))
      && ! FUNC8 (exp, &nonnull)
      && ! nonnull)
    {
      exp = FUNC9 (exp);
      cond = FUNC6 (boolean_type_node, FUNC1 (exp, 0));
    }

  exp = FUNC7 (exp);

  if (exp == error_mark_node)
    return error_mark_node;

  if (cond)
    {
      tree bad = FUNC10 ();

      exp = FUNC4 (COND_EXPR, FUNC2 (exp), cond, exp, bad);
    }

  return exp;
}