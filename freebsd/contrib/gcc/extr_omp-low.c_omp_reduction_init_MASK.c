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
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
#define  BIT_AND_EXPR 142 
#define  BIT_IOR_EXPR 141 
#define  BIT_XOR_EXPR 140 
#define  EQ_EXPR 139 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  MAX_EXPR 138 
#define  MINUS_EXPR 137 
#define  MIN_EXPR 136 
#define  MULT_EXPR 135 
 int /*<<< orphan*/  NEGATE_EXPR ; 
#define  NE_EXPR 134 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  PLUS_EXPR 133 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  TRUTH_ANDIF_EXPR 132 
#define  TRUTH_AND_EXPR 131 
#define  TRUTH_ORIF_EXPR 130 
#define  TRUTH_OR_EXPR 129 
#define  TRUTH_XOR_EXPR 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  integer_minus_one_node ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

tree
FUNC14 (tree clause, tree type)
{
  switch (FUNC2 (clause))
    {
    case PLUS_EXPR:
    case MINUS_EXPR:
    case BIT_IOR_EXPR:
    case BIT_XOR_EXPR:
    case TRUTH_OR_EXPR:
    case TRUTH_ORIF_EXPR:
    case TRUTH_XOR_EXPR:
    case NE_EXPR:
      return FUNC8 (type, integer_zero_node);

    case MULT_EXPR:
    case TRUTH_AND_EXPR:
    case TRUTH_ANDIF_EXPR:
    case EQ_EXPR:
      return FUNC8 (type, integer_one_node);

    case BIT_AND_EXPR:
      return FUNC8 (type, integer_minus_one_node);

    case MAX_EXPR:
      if (FUNC3 (type))
	{
	  REAL_VALUE_TYPE max, min;
	  if (FUNC0 (FUNC6 (type)))
	    {
	      FUNC12 (&max);
	      FUNC11 (&min, NEGATE_EXPR, &max, NULL);
	    }
	  else
	    FUNC13 (&min, 1, FUNC6 (type));
	  return FUNC7 (type, min);
	}
      else
	{
	  FUNC9 (FUNC1 (type));
	  return FUNC5 (type);
	}

    case MIN_EXPR:
      if (FUNC3 (type))
	{
	  REAL_VALUE_TYPE max;
	  if (FUNC0 (FUNC6 (type)))
	    FUNC12 (&max);
	  else
	    FUNC13 (&max, 0, FUNC6 (type));
	  return FUNC7 (type, max);
	}
      else
	{
	  FUNC9 (FUNC1 (type));
	  return FUNC4 (type);
	}

    default:
      FUNC10 ();
    }
}