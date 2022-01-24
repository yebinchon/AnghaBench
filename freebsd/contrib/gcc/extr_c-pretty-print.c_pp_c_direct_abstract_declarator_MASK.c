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
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
#define  ARRAY_TYPE 142 
#define  BLOCK_POINTER_TYPE 141 
#define  BOOLEAN_TYPE 140 
#define  COMPLEX_TYPE 139 
#define  ENUMERAL_TYPE 138 
#define  FUNCTION_TYPE 137 
#define  IDENTIFIER_NODE 136 
#define  INTEGER_TYPE 135 
 int /*<<< orphan*/  PLUS_EXPR ; 
#define  POINTER_TYPE 134 
#define  REAL_TYPE 133 
#define  RECORD_TYPE 132 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  TYPE_DECL 131 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 130 
#define  VECTOR_TYPE 129 
#define  VOID_TYPE 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC17 (c_pretty_printer *pp, tree t)
{
  switch (FUNC0 (t))
    {
    case POINTER_TYPE:
    /* APPLE LOCAL blocks */
    case BLOCK_POINTER_TYPE:
      FUNC8 (pp, t);
      break;

    case FUNCTION_TYPE:
      FUNC10 (pp, t);
      FUNC12 (pp, FUNC1 (t));
      break;

    case ARRAY_TYPE:
      FUNC9 (pp);
      if (FUNC2 (t) && FUNC3 (FUNC2 (t)))
	{
	  tree maxval = FUNC3 (FUNC2 (t));
	  tree type = FUNC1 (maxval);

	  if (FUNC7 (maxval, 0))
	    FUNC15 (pp, FUNC16 (maxval, 0) + 1);
	  else
	    FUNC13 (pp, FUNC6 (FUNC4 (PLUS_EXPR, type, maxval,
					     FUNC5 (type, 1))));
	}
      FUNC11 (pp);
      FUNC12 (pp, FUNC1 (t));
      break;

    case IDENTIFIER_NODE:
    case VOID_TYPE:
    case BOOLEAN_TYPE:
    case INTEGER_TYPE:
    case REAL_TYPE:
    case ENUMERAL_TYPE:
    case RECORD_TYPE:
    case UNION_TYPE:
    case VECTOR_TYPE:
    case COMPLEX_TYPE:
    case TYPE_DECL:
      break;

    default:
      FUNC14 (pp, t);
      break;
    }
}