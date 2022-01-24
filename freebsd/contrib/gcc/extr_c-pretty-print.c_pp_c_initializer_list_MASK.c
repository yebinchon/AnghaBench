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
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
#define  ARRAY_TYPE 132 
 int COMPLEX_CST ; 
 int COMPLEX_EXPR ; 
#define  COMPLEX_TYPE 131 
 int CONSTRUCTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
#define  RECORD_TYPE 130 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 129 
 int VECTOR_CST ; 
#define  VECTOR_TYPE 128 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC23 (c_pretty_printer *pp, tree e)
{
  tree type = FUNC7 (e);
  const enum tree_code code = FUNC2 (type);

  switch (code)
    {
    case RECORD_TYPE:
    case UNION_TYPE:
    case ARRAY_TYPE:
      {
	tree init = FUNC4 (e, 0);
	for (; init != NULL_TREE; init = FUNC1 (init))
	  {
	    if (code == RECORD_TYPE || code == UNION_TYPE)
	      {
		FUNC12 (pp);
		FUNC15 (pp, FUNC5 (init));
	      }
	    else
	      {
		FUNC14 (pp);
		if (FUNC5 (init))
		  FUNC10 (pp, FUNC5 (init));
		FUNC16 (pp);
	      }
	    FUNC17 (pp);
	    FUNC18 (pp);
	    FUNC17 (pp);
	    FUNC20 (pp, FUNC8 (init));
	    if (FUNC1 (init))
	      FUNC21 (pp, ',');
	  }
      }
      return;

    case VECTOR_TYPE:
      if (FUNC2 (e) == VECTOR_CST)
	FUNC13 (pp, FUNC9 (e));
      else if (FUNC2 (e) == CONSTRUCTOR)
	FUNC11 (pp, FUNC0 (e));
      else
	break;
      return;

    case COMPLEX_TYPE:
      if (FUNC2 (e) == CONSTRUCTOR)
	FUNC11 (pp, FUNC0 (e));
      else if (FUNC2 (e) == COMPLEX_CST || FUNC2 (e) == COMPLEX_EXPR)
	{
	  const bool cst = FUNC2 (e) == COMPLEX_CST;
	  FUNC19 (pp, cst ? FUNC6 (e) : FUNC4 (e, 0));
	  FUNC21 (pp, ',');
	  FUNC19 (pp, cst ? FUNC3 (e) : FUNC4 (e, 1));
	}
      else
	break;
      return;

    default:
      break;
    }

  FUNC22 (pp, type);
}