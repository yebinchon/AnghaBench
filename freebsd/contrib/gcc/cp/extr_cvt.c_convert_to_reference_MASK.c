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
 int /*<<< orphan*/  ADDR_EXPR ; 
 int COMPARE_BASE ; 
 int COMPARE_DERIVED ; 
 int CONV_CONST ; 
 int CONV_IMPLICIT ; 
 int CONV_REINTERPRET ; 
 int CONV_STATIC ; 
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int LOOKUP_COMPLAIN ; 
 int LOOKUP_NO_CONVERSION ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,int,scalar_t__) ; 
 int FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__,scalar_t__,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  tf_none ; 
 int /*<<< orphan*/  tf_warning_or_error ; 
 scalar_t__ unknown_type_node ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 

tree
FUNC23 (tree reftype, tree expr, int convtype,
		      int flags, tree decl)
{
  tree type = FUNC3 (FUNC2 (reftype));
  tree intype;
  tree rval = NULL_TREE;
  tree rval_as_conversion = NULL_TREE;
  bool can_convert_intype_to_type;

  if (FUNC1 (type) == FUNCTION_TYPE
      && FUNC2 (expr) == unknown_type_node)
    expr = FUNC16 (type, expr,
			     (flags & LOOKUP_COMPLAIN)
			     ? tf_warning_or_error : tf_none);

  if (expr == error_mark_node)
    return error_mark_node;

  intype = FUNC2 (expr);

  FUNC15 (FUNC1 (intype) != REFERENCE_TYPE);
  FUNC15 (FUNC1 (reftype) == REFERENCE_TYPE);

  intype = FUNC3 (intype);

  can_convert_intype_to_type = FUNC10 (type, intype);
  if (!can_convert_intype_to_type
      && (convtype & CONV_IMPLICIT) && FUNC0 (intype)
      && ! (flags & LOOKUP_NO_CONVERSION))
    {
      /* Look for a user-defined conversion to lvalue that we can use.  */

      rval_as_conversion
	= FUNC7 (reftype, expr);

      if (rval_as_conversion && rval_as_conversion != error_mark_node
	  && FUNC20 (rval_as_conversion))
	{
	  expr = rval_as_conversion;
	  rval_as_conversion = NULL_TREE;
	  intype = type;
	  can_convert_intype_to_type = 1;
	}
    }

  if (((convtype & CONV_STATIC) && FUNC10 (intype, type))
      || ((convtype & CONV_IMPLICIT) && can_convert_intype_to_type))
    {
      if (flags & LOOKUP_COMPLAIN)
	{
	  tree ttl = FUNC2 (reftype);
	  tree ttr = FUNC18 (expr);

	  if (! FUNC20 (expr))
	    FUNC21 (reftype, intype, decl);

	  if (! (convtype & CONV_CONST)
		   && !FUNC4 (ttl, ttr))
	    FUNC19 ("conversion from %qT to %qT discards qualifiers",
		     ttr, reftype);
	}

      return FUNC9 (reftype, expr, flags, decl);
    }
  else if ((convtype & CONV_REINTERPRET) && FUNC17 (expr))
    {
      /* When casting an lvalue to a reference type, just convert into
	 a pointer to the new type and deference it.  This is allowed
	 by San Diego WP section 5.2.9 paragraph 12, though perhaps it
	 should be done directly (jason).  (int &)ri ---> *(int*)&ri */

      /* B* bp; A& ar = (A&)bp; is valid, but it's probably not what they
	 meant.  */
      if (FUNC1 (intype) == POINTER_TYPE
	  && (FUNC11 (FUNC2 (intype), type,
			 COMPARE_BASE | COMPARE_DERIVED)))
	FUNC22 (0, "casting %qT to %qT does not dereference pointer",
		 intype, reftype);

      rval = FUNC8 (ADDR_EXPR, expr, 0);
      if (rval != error_mark_node)
	rval = FUNC13 (FUNC6 (FUNC2 (reftype)),
			      rval, 0);
      if (rval != error_mark_node)
	rval = FUNC5 (NOP_EXPR, reftype, rval);
    }
  else
    {
      rval = FUNC12 (NULL_TREE, type, expr, flags,
					 "converting", 0, 0);
      if (rval == NULL_TREE || rval == error_mark_node)
	return rval;
      FUNC21 (reftype, intype, decl);
      rval = FUNC9 (reftype, rval, flags, decl);
    }

  if (rval)
    {
      /* If we found a way to convert earlier, then use it.  */
      return rval;
    }

  if (flags & LOOKUP_COMPLAIN)
    FUNC14 ("cannot convert type %qT to type %qT", intype, reftype);

  return error_mark_node;
}