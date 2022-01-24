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
#define  ALIGNOF_EXPR 134 
#define  DELETE_EXPR 133 
#define  NEW_EXPR 132 
#define  SIZEOF_EXPR 131 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  UNARY_PLUS_EXPR 130 
#define  VEC_DELETE_EXPR 129 
#define  VEC_NEW_EXPR 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15 (cxx_pretty_printer *pp, tree t)
{
  enum tree_code code = FUNC0 (t);
  switch (code)
    {
    case NEW_EXPR:
    case VEC_NEW_EXPR:
      FUNC9 (pp, t);
      break;

    case DELETE_EXPR:
    case VEC_DELETE_EXPR:
      FUNC6 (pp, t);
      break;

    case SIZEOF_EXPR:
    case ALIGNOF_EXPR:
      FUNC7 (pp, code == SIZEOF_EXPR ? "sizeof" : "__alignof__");
      FUNC12 (pp);
      if (FUNC2 (FUNC1 (t, 0)))
	{
	  FUNC8 (pp);
	  FUNC11 (pp, FUNC1 (t, 0));
	  FUNC10 (pp);
	}
      else
	FUNC14 (pp, FUNC1 (t, 0));
      break;

    case UNARY_PLUS_EXPR:
      FUNC13 (pp);
      FUNC5 (pp, FUNC1 (t, 0));
      break;

    default:
      FUNC4 (FUNC3 (pp), t);
      break;
    }
}