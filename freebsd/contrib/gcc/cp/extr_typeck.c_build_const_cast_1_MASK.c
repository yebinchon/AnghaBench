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
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__,...) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  processing_template_decl ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 scalar_t__ warn_cast_qual ; 
 int /*<<< orphan*/  warning0 ; 

__attribute__((used)) static tree
FUNC18 (tree dst_type, tree expr, bool complain,
		    bool *valid_p)
{
  tree src_type;
  tree reference_type;

  /* Callers are responsible for handling error_mark_node as a
     destination type.  */
  FUNC14 (dst_type != error_mark_node);
  /* In a template, callers should be building syntactic
     representations of casts, not using this machinery.  */
  FUNC14 (!processing_template_decl);

  /* Assume the conversion is invalid.  */
  if (valid_p)
    *valid_p = false;

  if (!FUNC0 (dst_type) && !FUNC4 (dst_type))
    {
      if (complain)
	FUNC13 ("invalid use of const_cast with type %qT, "
	       "which is not a pointer, "
	       "reference, nor a pointer-to-data-member type", dst_type);
      return error_mark_node;
    }

  if (FUNC1 (FUNC3 (dst_type)) == FUNCTION_TYPE)
    {
      if (complain)
	FUNC13 ("invalid use of const_cast with type %qT, which is a pointer "
	       "or reference to a function type", dst_type);
      return error_mark_node;
    }

  /* Save casted types in the function's used types hash table.  */
  FUNC17 (dst_type);

  src_type = FUNC3 (expr);
  /* Expressions do not really have reference types.  */
  if (FUNC1 (src_type) == REFERENCE_TYPE)
    src_type = FUNC3 (src_type);

  /* [expr.const.cast]

     An lvalue of type T1 can be explicitly converted to an lvalue of
     type T2 using the cast const_cast<T2&> (where T1 and T2 are object
     types) if a pointer to T1 can be explicitly converted to the type
     pointer to T2 using a const_cast.  */
  if (FUNC1 (dst_type) == REFERENCE_TYPE)
    {
      reference_type = dst_type;
      if (! FUNC15 (expr))
	{
	  if (complain)
	    FUNC13 ("invalid const_cast of an rvalue of type %qT to type %qT",
		   src_type, dst_type);
	  return error_mark_node;
	}
      dst_type = FUNC7 (FUNC3 (dst_type));
      src_type = FUNC7 (src_type);
    }
  else
    {
      reference_type = NULL_TREE;
      /* If the destination type is not a reference type, the
	 lvalue-to-rvalue, array-to-pointer, and function-to-pointer
	 conversions are performed.  */
      src_type = FUNC16 (src_type);
      if (src_type == error_mark_node)
	return error_mark_node;
    }

  if ((FUNC5 (src_type) || FUNC4 (src_type))
      && FUNC10 (dst_type, src_type))
    {
      if (valid_p)
	{
	  *valid_p = true;
	  /* This cast is actually a C-style cast.  Issue a warning if
	     the user is making a potentially unsafe cast.  */
	  if (warn_cast_qual)
	    FUNC9 (src_type, dst_type,
					      warning0,
					      "cast");
	}
      if (reference_type)
	{
	  expr = FUNC8 (ADDR_EXPR, expr, 0);
	  expr = FUNC6 (reference_type, expr);
	  return FUNC11 (expr);
	}
      else
	{
	  expr = FUNC12 (expr);
	  /* build_c_cast puts on a NOP_EXPR to make the result not an
	     lvalue.  Strip such NOP_EXPRs if VALUE is being used in
	     non-lvalue context.  */
	  if (FUNC1 (expr) == NOP_EXPR
	      && FUNC3 (expr) == FUNC3 (FUNC2 (expr, 0)))
	    expr = FUNC2 (expr, 0);
	  return FUNC6 (dst_type, expr);
	}
    }

  if (complain)
    FUNC13 ("invalid const_cast from type %qT to type %qT",
	   src_type, dst_type);
  return error_mark_node;
}