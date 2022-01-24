#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ (* types_compatible_p ) (scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
#define  BLOCK_POINTER_TYPE 138 
#define  BOOLEAN_TYPE 137 
 int const COMPLEX_EXPR ; 
#define  COMPLEX_TYPE 136 
#define  ENUMERAL_TYPE 135 
 scalar_t__ ERROR_MARK ; 
 int /*<<< orphan*/  FLOAT_EXPR ; 
 int /*<<< orphan*/  IMAGPART_EXPR ; 
 int const INTEGER_CST ; 
#define  INTEGER_TYPE 134 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
#define  OFFSET_TYPE 133 
#define  POINTER_TYPE 132 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  REALPART_EXPR ; 
 int const REAL_CST ; 
#define  REAL_TYPE 131 
#define  REFERENCE_TYPE 130 
 int const FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
#define  VECTOR_TYPE 129 
 int /*<<< orphan*/  VIEW_CONVERT_EXPR ; 
#define  VOID_TYPE 128 
 scalar_t__ FUNC7 (int const,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int const,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ integer_zero_node ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 TYPE_1__ lang_hooks ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC19 (tree type, tree arg)
{
  tree orig = FUNC4 (arg);
  tree tem;

  if (type == orig)
    return arg;

  if (FUNC2 (arg) == ERROR_MARK
      || FUNC2 (type) == ERROR_MARK
      || FUNC2 (orig) == ERROR_MARK)
    return error_mark_node;

  if (FUNC5 (type) == FUNC5 (orig)
      || lang_hooks.types_compatible_p (FUNC5 (type),
					FUNC5 (orig)))
    return FUNC9 (NOP_EXPR, type, arg);

  switch (FUNC2 (type))
    {
    case INTEGER_TYPE: case ENUMERAL_TYPE: case BOOLEAN_TYPE:
    case POINTER_TYPE: case REFERENCE_TYPE:
      /* APPLE LOCAL blocks 5862465 */
    case BLOCK_POINTER_TYPE:
    case OFFSET_TYPE:
      if (FUNC2 (arg) == INTEGER_CST)
	{
	  tem = FUNC11 (NOP_EXPR, type, arg);
	  if (tem != NULL_TREE)
	    return tem;
	}
      if (FUNC0 (orig) || FUNC1 (orig)
	  || FUNC2 (orig) == OFFSET_TYPE)
        return FUNC9 (NOP_EXPR, type, arg);
      if (FUNC2 (orig) == COMPLEX_TYPE)
	{
	  tem = FUNC9 (REALPART_EXPR, FUNC4 (orig), arg);
	  return FUNC19 (type, tem);
	}
      FUNC13 (FUNC2 (orig) == VECTOR_TYPE
		  && FUNC18 (FUNC6 (type), FUNC6 (orig)));
      return FUNC9 (NOP_EXPR, type, arg);

    case REAL_TYPE:
      if (FUNC2 (arg) == INTEGER_CST)
	{
	  tem = FUNC11 (FLOAT_EXPR, type, arg);
	  if (tem != NULL_TREE)
	    return tem;
	}
      else if (FUNC2 (arg) == REAL_CST)
	{
	  tem = FUNC11 (NOP_EXPR, type, arg);
	  if (tem != NULL_TREE)
	    return tem;
	}

      switch (FUNC2 (orig))
	{
	case INTEGER_TYPE:
	case BOOLEAN_TYPE: case ENUMERAL_TYPE:
	case POINTER_TYPE: case REFERENCE_TYPE:
	  return FUNC9 (FLOAT_EXPR, type, arg);

	case REAL_TYPE:
	  return FUNC9 (NOP_EXPR, type, arg);

	case COMPLEX_TYPE:
	  tem = FUNC9 (REALPART_EXPR, FUNC4 (orig), arg);
	  return FUNC19 (type, tem);

	default:
	  FUNC14 ();
	}

    case COMPLEX_TYPE:
      switch (FUNC2 (orig))
	{
	case INTEGER_TYPE:
	case BOOLEAN_TYPE: case ENUMERAL_TYPE:
	case POINTER_TYPE: case REFERENCE_TYPE:
	case REAL_TYPE:
	  return FUNC7 (COMPLEX_EXPR, type,
			 FUNC19 (FUNC4 (type), arg),
			 FUNC19 (FUNC4 (type), integer_zero_node));
	case COMPLEX_TYPE:
	  {
	    tree rpart, ipart;

	    if (FUNC2 (arg) == COMPLEX_EXPR)
	      {
		rpart = FUNC19 (FUNC4 (type), FUNC3 (arg, 0));
		ipart = FUNC19 (FUNC4 (type), FUNC3 (arg, 1));
		return FUNC10 (COMPLEX_EXPR, type, rpart, ipart);
	      }

	    arg = FUNC16 (arg);
	    rpart = FUNC9 (REALPART_EXPR, FUNC4 (orig), arg);
	    ipart = FUNC9 (IMAGPART_EXPR, FUNC4 (orig), arg);
	    rpart = FUNC19 (FUNC4 (type), rpart);
	    ipart = FUNC19 (FUNC4 (type), ipart);
	    return FUNC10 (COMPLEX_EXPR, type, rpart, ipart);
	  }

	default:
	  FUNC14 ();
	}

    case VECTOR_TYPE:
      if (FUNC15 (arg))
	return FUNC8 (type);
      FUNC13 (FUNC18 (FUNC6 (type), FUNC6 (orig)));
      FUNC13 (FUNC0 (orig) || FUNC1 (orig)
		  || FUNC2 (orig) == VECTOR_TYPE);
      return FUNC9 (VIEW_CONVERT_EXPR, type, arg);

    case VOID_TYPE:
      return FUNC9 (NOP_EXPR, type, FUNC12 (arg));

    default:
      FUNC14 ();
    }
}