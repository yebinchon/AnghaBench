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

/* Variables and functions */
#define  BOOLEAN_TYPE 134 
 int COMPLEX_EXPR ; 
#define  COMPLEX_TYPE 133 
#define  ENUMERAL_TYPE 132 
 int /*<<< orphan*/  IMAGPART_EXPR ; 
#define  INTEGER_TYPE 131 
#define  POINTER_TYPE 130 
 int /*<<< orphan*/  REALPART_EXPR ; 
#define  REAL_TYPE 129 
#define  REFERENCE_TYPE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

tree
FUNC10 (tree type, tree expr)
{
  tree subtype = FUNC2 (type);

  switch (FUNC0 (FUNC2 (expr)))
    {
    case REAL_TYPE:
    case INTEGER_TYPE:
    case ENUMERAL_TYPE:
    case BOOLEAN_TYPE:
      return FUNC4 (COMPLEX_EXPR, type, FUNC5 (subtype, expr),
		     FUNC5 (subtype, integer_zero_node));

    case COMPLEX_TYPE:
      {
	tree elt_type = FUNC2 (FUNC2 (expr));

	if (FUNC3 (elt_type) == FUNC3 (subtype))
	  return expr;
	else if (FUNC0 (expr) == COMPLEX_EXPR)
	  return FUNC8 (COMPLEX_EXPR, type,
			      FUNC5 (subtype, FUNC1 (expr, 0)),
			      FUNC5 (subtype, FUNC1 (expr, 1)));
	else
	  {
	    expr = FUNC9 (expr);
	    return
	      FUNC8 (COMPLEX_EXPR, type,
			   FUNC5 (subtype,
				    FUNC7 (REALPART_EXPR,
						 FUNC2 (FUNC2 (expr)),
						 expr)),
			   FUNC5 (subtype,
				    FUNC7 (IMAGPART_EXPR,
						 FUNC2 (FUNC2 (expr)),
						 expr)));
	  }
      }

    case POINTER_TYPE:
    case REFERENCE_TYPE:
      FUNC6 ("pointer value used where a complex was expected");
      return FUNC10 (type, integer_zero_node);

    default:
      FUNC6 ("aggregate value used where a complex was expected");
      return FUNC10 (type, integer_zero_node);
    }
}