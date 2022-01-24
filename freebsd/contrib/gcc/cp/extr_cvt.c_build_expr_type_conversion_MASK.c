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
#define  ARRAY_TYPE 135 
#define  BOOLEAN_TYPE 134 
#define  ENUMERAL_TYPE 133 
#define  FUNCTION_TYPE 132 
#define  INTEGER_TYPE 131 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  OPT_Wconversion ; 
#define  POINTER_TYPE 130 
#define  REAL_TYPE 129 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
#define  VECTOR_TYPE 128 
 int WANT_ENUM ; 
 int WANT_FLOAT ; 
 int WANT_INT ; 
 int WANT_NULL ; 
 int WANT_POINTER ; 
 int WANT_VECTOR ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,...) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ null_node ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

tree
FUNC14 (int desires, tree expr, bool complain)
{
  tree basetype = FUNC3 (expr);
  tree conv = NULL_TREE;
  tree winner = NULL_TREE;

  if (expr == null_node
      && (desires & WANT_INT)
      && !(desires & WANT_NULL))
    FUNC13 (OPT_Wconversion, "converting NULL to non-pointer type");

  basetype = FUNC3 (expr);

  if (basetype == error_mark_node)
    return error_mark_node;

  if (! FUNC0 (basetype))
    switch (FUNC2 (basetype))
      {
      case INTEGER_TYPE:
	if ((desires & WANT_NULL) && FUNC12 (expr))
	  return expr;
	/* else fall through...  */

      case BOOLEAN_TYPE:
	return (desires & WANT_INT) ? expr : NULL_TREE;
      case ENUMERAL_TYPE:
	return (desires & WANT_ENUM) ? expr : NULL_TREE;
      case REAL_TYPE:
	return (desires & WANT_FLOAT) ? expr : NULL_TREE;
      case POINTER_TYPE:
	return (desires & WANT_POINTER) ? expr : NULL_TREE;

      case FUNCTION_TYPE:
      case ARRAY_TYPE:
	return (desires & WANT_POINTER) ? FUNC8 (expr)
					: NULL_TREE;

      case VECTOR_TYPE:
	if ((desires & WANT_VECTOR) == 0)
	  return NULL_TREE;
	switch (FUNC2 (FUNC3 (basetype)))
	  {
	  case INTEGER_TYPE:
	  case BOOLEAN_TYPE:
	    return (desires & WANT_INT) ? expr : NULL_TREE;
	  case ENUMERAL_TYPE:
	    return (desires & WANT_ENUM) ? expr : NULL_TREE;
	  case REAL_TYPE:
	    return (desires & WANT_FLOAT) ? expr : NULL_TREE;
	  default:
	    return NULL_TREE;
	  }

      default:
	return NULL_TREE;
      }

  /* The code for conversions from class type is currently only used for
     delete expressions.  Other expressions are handled by build_new_op.  */
  if (!FUNC7 (basetype, expr))
    return error_mark_node;
  if (!FUNC5 (basetype))
    return NULL_TREE;

  for (conv = FUNC10 (basetype); conv; conv = FUNC1 (conv))
    {
      int win = 0;
      tree candidate;
      tree cand = FUNC4 (conv);

      if (winner && winner == cand)
	continue;

      candidate = FUNC11 (FUNC3 (FUNC3 (cand)));

      switch (FUNC2 (candidate))
	{
	case BOOLEAN_TYPE:
	case INTEGER_TYPE:
	  win = (desires & WANT_INT); break;
	case ENUMERAL_TYPE:
	  win = (desires & WANT_ENUM); break;
	case REAL_TYPE:
	  win = (desires & WANT_FLOAT); break;
	case POINTER_TYPE:
	  win = (desires & WANT_POINTER); break;

	case VECTOR_TYPE:
	  if ((desires & WANT_VECTOR) == 0)
	    break;
	  switch (FUNC2 (FUNC3 (candidate)))
	    {
	    case BOOLEAN_TYPE:
	    case INTEGER_TYPE:
	      win = (desires & WANT_INT); break;
	    case ENUMERAL_TYPE:
	      win = (desires & WANT_ENUM); break;
	    case REAL_TYPE:
	      win = (desires & WANT_FLOAT); break;
	    default:
	      break;
	    }
	  break;

	default:
	  break;
	}

      if (win)
	{
	  if (winner)
	    {
	      if (complain)
		{
		  FUNC9 ("ambiguous default type conversion from %qT",
			 basetype);
		  FUNC9 ("  candidate conversions include %qD and %qD",
			 winner, cand);
		}
	      return error_mark_node;
	    }
	  else
	    winner = cand;
	}
    }

  if (winner)
    {
      tree type = FUNC11 (FUNC3 (FUNC3 (winner)));
      return FUNC6 (type, expr, LOOKUP_NORMAL);
    }

  return NULL_TREE;
}