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
typedef  int /*<<< orphan*/  cxx_pretty_printer ;

/* Variables and functions */
#define  NEW_EXPR 129 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int TREE_LIST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
#define  VEC_NEW_EXPR 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_zero_node ; 

__attribute__((used)) static void
FUNC14 (cxx_pretty_printer *pp, tree t)
{
  enum tree_code code = FUNC1 (t);
  switch (code)
    {
    case NEW_EXPR:
    case VEC_NEW_EXPR:
      if (FUNC0 (t))
	FUNC6 (pp);
      FUNC8 (pp, "new");
      if (FUNC2 (t, 0))
	{
	  FUNC5 (pp, FUNC2 (t, 0));
	  FUNC12 (pp);
	}
      /* FIXME: array-types are built with one more element.  */
      FUNC9 (pp, FUNC2 (t, 1));
      if (FUNC2 (t, 2))
	{
	  FUNC10 (pp);
	  t = FUNC2 (t, 2);
	  if (FUNC1 (t) == TREE_LIST)
	    FUNC4 (FUNC3 (pp), t);
	  else if (t == void_zero_node)
	    ;			/* OK, empty initializer list.  */
	  else
	    FUNC7 (pp, t);
	  FUNC11 (pp);
	}
      break;

    default:
      FUNC13 (pp, t);
    }
}