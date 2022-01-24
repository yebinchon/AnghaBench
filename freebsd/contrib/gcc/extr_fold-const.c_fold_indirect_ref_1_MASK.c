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
 scalar_t__ ADDR_EXPR ; 
 int /*<<< orphan*/  ARRAY_REF ; 
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ COMPLEX_TYPE ; 
 scalar_t__ CONST_DECL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IMAGPART_EXPR ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  REALPART_EXPR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ size_zero_node ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 

tree
FUNC14 (tree type, tree op0)
{
  tree sub = op0;
  tree subtype;

  FUNC2 (sub);
  subtype = FUNC5 (sub);
  if (!FUNC1 (subtype))
    return NULL_TREE;

  if (FUNC3 (sub) == ADDR_EXPR)
    {
      tree op = FUNC4 (sub, 0);
      tree optype = FUNC5 (op);
      /* *&CONST_DECL -> to the value of the const decl.  */
      if (FUNC3 (op) == CONST_DECL)
	return FUNC0 (op);
      /* *&p => p;  make sure to handle *&"str"[cst] here.  */
      if (type == optype)
	{
	  tree fop = FUNC12 (op);
	  if (fop)
	    return fop;
	  else
	    return op;
	}
      /* *(foo *)&fooarray => fooarray[0] */
      else if (FUNC3 (optype) == ARRAY_TYPE
	       && type == FUNC5 (optype))
	{
	  tree type_domain = FUNC6 (optype);
	  tree min_val = size_zero_node;
	  if (type_domain && FUNC7 (type_domain))
	    min_val = FUNC7 (type_domain);
	  return FUNC9 (ARRAY_REF, type, op, min_val, NULL_TREE, NULL_TREE);
	}
      /* *(foo *)&complexfoo => __real__ complexfoo */
      else if (FUNC3 (optype) == COMPLEX_TYPE
	       && type == FUNC5 (optype))
	return FUNC11 (REALPART_EXPR, type, op);
    }

  /* ((foo*)&complexfoo)[1] => __imag__ complexfoo */
  if (FUNC3 (sub) == PLUS_EXPR
      && FUNC3 (FUNC4 (sub, 1)) == INTEGER_CST)
    {
      tree op00 = FUNC4 (sub, 0);
      tree op01 = FUNC4 (sub, 1);
      tree op00type;

      FUNC2 (op00);
      op00type = FUNC5 (op00);
      if (FUNC3 (op00) == ADDR_EXPR
 	  && FUNC3 (FUNC5 (op00type)) == COMPLEX_TYPE
	  && type == FUNC5 (FUNC5 (op00type)))
	{
	  tree size = FUNC8 (type);
	  if (FUNC13 (size, op01))
	    return FUNC11 (IMAGPART_EXPR, type, FUNC4 (op00, 0));
	}
    }
  
  /* *(foo *)fooarrptr => (*fooarrptr)[0] */
  if (FUNC3 (FUNC5 (subtype)) == ARRAY_TYPE
      && type == FUNC5 (FUNC5 (subtype)))
    {
      tree type_domain;
      tree min_val = size_zero_node;
      sub = FUNC10 (sub);
      type_domain = FUNC6 (FUNC5 (sub));
      if (type_domain && FUNC7 (type_domain))
	min_val = FUNC7 (type_domain);
      return FUNC9 (ARRAY_REF, type, sub, min_val, NULL_TREE, NULL_TREE);
    }

  return NULL_TREE;
}