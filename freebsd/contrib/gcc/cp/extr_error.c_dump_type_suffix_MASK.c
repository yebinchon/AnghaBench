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
#define  ARRAY_TYPE 154 
#define  BLOCK_POINTER_TYPE 153 
#define  BOOLEAN_TYPE 152 
#define  BOUND_TEMPLATE_TEMPLATE_PARM 151 
#define  COMPLEX_TYPE 150 
#define  ENUMERAL_TYPE 149 
#define  ERROR_MARK 148 
#define  FUNCTION_TYPE 147 
#define  IDENTIFIER_NODE 146 
#define  INTEGER_TYPE 145 
#define  METHOD_TYPE 144 
 int const MINUS_EXPR ; 
#define  OFFSET_TYPE 143 
 int /*<<< orphan*/  PLUS_EXPR ; 
#define  POINTER_TYPE 142 
#define  REAL_TYPE 141 
#define  RECORD_TYPE 140 
#define  REFERENCE_TYPE 139 
#define  TEMPLATE_TEMPLATE_PARM 138 
#define  TEMPLATE_TYPE_PARM 137 
 int TFF_EXPR_IN_PARENS ; 
 int TFF_FUNCTION_DEFAULT_ARGUMENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
#define  TREE_LIST 136 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  TREE_VEC 135 
#define  TYPENAME_TYPE 134 
#define  TYPEOF_TYPE 133 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  TYPE_DECL 132 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 131 
#define  UNKNOWN_TYPE 130 
#define  VECTOR_TYPE 129 
#define  VOID_TYPE 128 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC25 (tree t, int flags)
{
  if (FUNC9 (t))
    t = FUNC8 (t);

  switch (FUNC1 (t))
    {
    case POINTER_TYPE:
      /* APPLE LOCAL blocks 6040305 */
    case BLOCK_POINTER_TYPE:
    case REFERENCE_TYPE:
    case OFFSET_TYPE:
      if (FUNC1 (FUNC3 (t)) == ARRAY_TYPE)
	FUNC20 (cxx_pp);
      FUNC25 (FUNC3 (t), flags);
      break;

      /* Can only be reached through function pointer.  */
    case FUNCTION_TYPE:
    case METHOD_TYPE:
      {
	tree arg;
	FUNC20 (cxx_pp);
	arg = FUNC5 (t);
	if (FUNC1 (t) == METHOD_TYPE)
	  arg = FUNC0 (arg);

	/* Function pointers don't have default args.  Not in standard C++,
	   anyway; they may in g++, but we'll just pretend otherwise.  */
	FUNC14 (arg, flags & ~TFF_FUNCTION_DEFAULT_ARGUMENTS);

	if (FUNC1 (t) == METHOD_TYPE)
	  FUNC17
	    (cxx_pp, FUNC3 (FUNC4 (FUNC5 (t))));
	else
	  FUNC17(cxx_pp, t);
	FUNC12 (FUNC10 (t), flags);
	FUNC25 (FUNC3 (t), flags);
	break;
      }

    case ARRAY_TYPE:
      FUNC21 (cxx_pp);
      FUNC18 (cxx_pp);
      if (FUNC6 (t))
	{
	  if (FUNC16 (FUNC7 (FUNC6 (t)), 0))
	    FUNC23
	      (cxx_pp, FUNC24 (FUNC7 (FUNC6 (t)), 0) + 1);
	  else if (FUNC1 (FUNC7 (FUNC6 (t))) == MINUS_EXPR)
	    FUNC13 (FUNC2 (FUNC7 (FUNC6 (t)), 0),
		       flags & ~TFF_EXPR_IN_PARENS);
	  else
	    FUNC13 (FUNC15 (FUNC11
			     (PLUS_EXPR, FUNC7 (FUNC6 (t)),
			      integer_one_node)),
		       flags & ~TFF_EXPR_IN_PARENS);
	}
      FUNC19 (cxx_pp);
      FUNC25 (FUNC3 (t), flags);
      break;

    case ENUMERAL_TYPE:
    case IDENTIFIER_NODE:
    case INTEGER_TYPE:
    case BOOLEAN_TYPE:
    case REAL_TYPE:
    case RECORD_TYPE:
    case TEMPLATE_TYPE_PARM:
    case TEMPLATE_TEMPLATE_PARM:
    case BOUND_TEMPLATE_TEMPLATE_PARM:
    case TREE_LIST:
    case TYPE_DECL:
    case TREE_VEC:
    case UNION_TYPE:
    case UNKNOWN_TYPE:
    case VOID_TYPE:
    case TYPENAME_TYPE:
    case COMPLEX_TYPE:
    case VECTOR_TYPE:
    case TYPEOF_TYPE:
      break;

    default:
      FUNC22 (cxx_pp, t);
    case ERROR_MARK:
      /* Don't mark it here, we should have already done in
	 dump_type_prefix.  */
      break;
    }
}