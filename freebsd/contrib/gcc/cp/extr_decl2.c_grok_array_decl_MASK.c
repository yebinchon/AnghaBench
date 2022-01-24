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
 int /*<<< orphan*/  ARRAY_REF ; 
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__) ; 
 int WANT_ENUM ; 
 int WANT_INT ; 
 int WANT_POINTER ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int,scalar_t__,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ processing_template_decl ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

tree
FUNC14 (tree array_expr, tree index_exp)
{
  tree type;
  tree expr;
  tree orig_array_expr = array_expr;
  tree orig_index_exp = index_exp;

  if (FUNC10 (array_expr) || FUNC10 (index_exp))
    return error_mark_node;

  if (processing_template_decl)
    {
      if (FUNC13 (array_expr)
	  || FUNC13 (index_exp))
	return FUNC6 (ARRAY_REF, array_expr, index_exp,
			     NULL_TREE, NULL_TREE);
      array_expr = FUNC8 (array_expr);
      index_exp = FUNC8 (index_exp);
    }

  type = FUNC2 (array_expr);
  FUNC11 (type);
  type = FUNC12 (type);

  /* If they have an `operator[]', use that.  */
  if (FUNC0 (type) || FUNC0 (FUNC2 (index_exp)))
    expr = FUNC7 (ARRAY_REF, LOOKUP_NORMAL,
			 array_expr, index_exp, NULL_TREE,
			 /*overloaded_p=*/NULL);
  else
    {
      tree p1, p2, i1, i2;

      /* Otherwise, create an ARRAY_REF for a pointer or array type.
	 It is a little-known fact that, if `a' is an array and `i' is
	 an int, you can write `i[a]', which means the same thing as
	 `a[i]'.  */
      if (FUNC1 (type) == ARRAY_TYPE)
	p1 = array_expr;
      else
	p1 = FUNC4 (WANT_POINTER, array_expr, false);

      if (FUNC1 (FUNC2 (index_exp)) == ARRAY_TYPE)
	p2 = index_exp;
      else
	p2 = FUNC4 (WANT_POINTER, index_exp, false);

      i1 = FUNC4 (WANT_INT | WANT_ENUM, array_expr,
				       false);
      i2 = FUNC4 (WANT_INT | WANT_ENUM, index_exp,
				       false);

      if ((p1 && i2) && (i1 && p2))
	FUNC9 ("ambiguous conversion for array subscript");

      if (p1 && i2)
	array_expr = p1, index_exp = i2;
      else if (i1 && p2)
	array_expr = p2, index_exp = i1;
      else
	{
	  FUNC9 ("invalid types %<%T[%T]%> for array subscript",
		 type, FUNC2 (index_exp));
	  return error_mark_node;
	}

      if (array_expr == error_mark_node || index_exp == error_mark_node)
	FUNC9 ("ambiguous conversion for array subscript");

      expr = FUNC3 (array_expr, index_exp);
    }
  if (processing_template_decl && expr != error_mark_node)
    return FUNC5 (ARRAY_REF, expr, orig_array_expr, orig_index_exp,
			      NULL_TREE, NULL_TREE);
  return expr;
}