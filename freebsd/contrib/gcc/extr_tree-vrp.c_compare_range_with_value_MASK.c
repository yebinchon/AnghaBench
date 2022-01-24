#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  TYPE_1__ value_range_t ;
typedef  int /*<<< orphan*/  tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int EQ_EXPR ; 
 int GE_EXPR ; 
 int GT_EXPR ; 
 int LE_EXPR ; 
 int LT_EXPR ; 
 int NE_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ VR_ANTI_RANGE ; 
 scalar_t__ VR_UNDEFINED ; 
 scalar_t__ VR_VARYING ; 
 int /*<<< orphan*/  boolean_false_node ; 
 int /*<<< orphan*/  boolean_true_node ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static tree
FUNC5 (enum tree_code comp, value_range_t *vr, tree val,
			  bool *strict_overflow_p)
{
  if (vr->type == VR_VARYING || vr->type == VR_UNDEFINED)
    return NULL_TREE;

  /* Anti-ranges need to be handled separately.  */
  if (vr->type == VR_ANTI_RANGE)
    {
      /* For anti-ranges, the only predicates that we can compute at
	 compile time are equality and inequality.  */
      if (comp == GT_EXPR
	  || comp == GE_EXPR
	  || comp == LT_EXPR
	  || comp == LE_EXPR)
	return NULL_TREE;

      /* ~[VAL_1, VAL_2] OP VAL is known if VAL_1 <= VAL <= VAL_2.  */
      if (FUNC4 (val, vr) == 1)
	return (comp == NE_EXPR) ? boolean_true_node : boolean_false_node;

      return NULL_TREE;
    }

  if (!FUNC3 (vr, strict_overflow_p))
    return NULL_TREE;

  if (comp == EQ_EXPR)
    {
      /* EQ_EXPR may only be computed if VR represents exactly
	 one value.  */
      if (FUNC0 (vr->min, vr->max, strict_overflow_p) == 0)
	{
	  int cmp = FUNC0 (vr->min, val, strict_overflow_p);
	  if (cmp == 0)
	    return boolean_true_node;
	  else if (cmp == -1 || cmp == 1 || cmp == 2)
	    return boolean_false_node;
	}
      else if (FUNC0 (val, vr->min, strict_overflow_p) == -1
	       || FUNC0 (vr->max, val, strict_overflow_p) == -1)
	return boolean_false_node;

      return NULL_TREE;
    }
  else if (comp == NE_EXPR)
    {
      /* If VAL is not inside VR, then they are always different.  */
      if (FUNC0 (vr->max, val, strict_overflow_p) == -1
	  || FUNC0 (vr->min, val, strict_overflow_p) == 1)
	return boolean_true_node;

      /* If VR represents exactly one value equal to VAL, then return
	 false.  */
      if (FUNC0 (vr->min, vr->max, strict_overflow_p) == 0
	  && FUNC0 (vr->min, val, strict_overflow_p) == 0)
	return boolean_false_node;

      /* Otherwise, they may or may not be different.  */
      return NULL_TREE;
    }
  else if (comp == LT_EXPR || comp == LE_EXPR)
    {
      int tst;

      /* If VR is to the left of VAL, return true.  */
      tst = FUNC0 (vr->max, val, strict_overflow_p);
      if ((comp == LT_EXPR && tst == -1)
	  || (comp == LE_EXPR && (tst == -1 || tst == 0)))
	{
	  if (FUNC2 (vr))
	    *strict_overflow_p = true;
	  return boolean_true_node;
	}

      /* If VR is to the right of VAL, return false.  */
      tst = FUNC0 (vr->min, val, strict_overflow_p);
      if ((comp == LT_EXPR && (tst == 0 || tst == 1))
	  || (comp == LE_EXPR && tst == 1))
	{
	  if (FUNC2 (vr))
	    *strict_overflow_p = true;
	  return boolean_false_node;
	}

      /* Otherwise, we don't know.  */
      return NULL_TREE;
    }
  else if (comp == GT_EXPR || comp == GE_EXPR)
    {
      int tst;

      /* If VR is to the right of VAL, return true.  */
      tst = FUNC0 (vr->min, val, strict_overflow_p);
      if ((comp == GT_EXPR && tst == 1)
	  || (comp == GE_EXPR && (tst == 0 || tst == 1)))
	{
	  if (FUNC2 (vr))
	    *strict_overflow_p = true;
	  return boolean_true_node;
	}

      /* If VR is to the left of VAL, return false.  */
      tst = FUNC0 (vr->max, val, strict_overflow_p);
      if ((comp == GT_EXPR && (tst == -1 || tst == 0))
	  || (comp == GE_EXPR && tst == -1))
	{
	  if (FUNC2 (vr))
	    *strict_overflow_p = true;
	  return boolean_false_node;
	}

      /* Otherwise, we don't know.  */
      return NULL_TREE;
    }

  FUNC1 ();
}