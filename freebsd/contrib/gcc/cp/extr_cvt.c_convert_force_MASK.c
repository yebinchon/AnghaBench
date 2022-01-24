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

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 int CONV_C_CAST ; 
 int /*<<< orphan*/  LOOKUP_COMPLAIN ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 scalar_t__ METHOD_TYPE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int POINTER_TYPE ; 
 int REFERENCE_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

tree
FUNC10 (tree type, tree expr, int convtype)
{
  tree e = expr;
  enum tree_code code = FUNC0 (type);

  if (code == REFERENCE_TYPE)
    return (FUNC7
	    (FUNC6 (type, e, CONV_C_CAST, LOOKUP_COMPLAIN,
				   NULL_TREE)));

  if (code == POINTER_TYPE)
    return FUNC7 (FUNC5 (type, e));

  /* From typeck.c convert_for_assignment */
  if (((FUNC0 (FUNC1 (e)) == POINTER_TYPE && FUNC0 (e) == ADDR_EXPR
	&& FUNC0 (FUNC1 (e)) == POINTER_TYPE
	&& FUNC0 (FUNC1 (FUNC1 (e))) == METHOD_TYPE)
       || FUNC8 (e)
       || FUNC3 (FUNC1 (e)))
      && FUNC3 (type))
    /* compatible pointer to member functions.  */
    return FUNC4 (FUNC2 (type), e, 1,
			     /*c_cast_p=*/1);

  return FUNC9 (type, e, CONV_C_CAST|convtype, LOOKUP_NORMAL);
}