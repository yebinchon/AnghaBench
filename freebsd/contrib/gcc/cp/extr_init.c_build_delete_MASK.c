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
typedef  scalar_t__ special_function_kind ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 scalar_t__ ARRAY_TYPE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  COMPOUND_EXPR ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DELETE_EXPR ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int LOOKUP_DESTRUCTOR ; 
 int /*<<< orphan*/  NE_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 
 scalar_t__ integer_one_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC33 (scalar_t__) ; 
 scalar_t__ sfk_complete_destructor ; 
 scalar_t__ sfk_deleting_destructor ; 
 int /*<<< orphan*/  sfk_destructor ; 
 int /*<<< orphan*/  void_type_node ; 
 scalar_t__ void_zero_node ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,char*) ; 

tree
FUNC35 (tree type, tree addr, special_function_kind auto_delete,
    int flags, int use_global_delete)
{
  tree expr;

  if (addr == error_mark_node)
    return error_mark_node;

  /* Can happen when CURRENT_EXCEPTION_OBJECT gets its type
     set to `error_mark_node' before it gets properly cleaned up.  */
  if (type == error_mark_node)
    return error_mark_node;

  type = FUNC11 (type);

  if (FUNC5 (type) == POINTER_TYPE)
    {
      bool complete_p = true;

      type = FUNC11 (FUNC7 (type));
      if (FUNC5 (type) == ARRAY_TYPE)
	goto handle_array;

      /* We don't want to warn about delete of void*, only other
	  incomplete types.  Deleting other incomplete types
	  invokes undefined behavior, but it is not ill-formed, so
	  compile to something that would even do The Right Thing
	  (TM) should the type have a trivial dtor and no delete
	  operator.  */
      if (!FUNC12 (type))
	{
	  FUNC23 (type);
	  if (!FUNC2 (type))
	    {
	      FUNC34 (0, "possible problem detected in invocation of "
		       "delete operator:");
	      FUNC26 (addr, type, 1);
	      FUNC31 ("neither the destructor nor the class-specific "
		      "operator delete will be called, even if they are "
		      "declared when the class is defined.");
	      complete_p = false;
	    }
	}
      if (FUNC12 (type) || !complete_p || !FUNC4 (type))
	/* Call the builtin operator delete.  */
	return FUNC16 (addr);
      if (FUNC6 (addr))
	addr = FUNC33 (addr);

      /* Throw away const and volatile on target type of addr.  */
      addr = FUNC24 (FUNC20 (type), addr, 0);
    }
  else if (FUNC5 (type) == ARRAY_TYPE)
    {
    handle_array:

      if (FUNC8 (type) == NULL_TREE)
	{
	  FUNC28 ("unknown array size in delete");
	  return error_mark_node;
	}
      return FUNC22 (addr, FUNC13 (type),
			       auto_delete, use_global_delete);
    }
  else
    {
      /* Don't check PROTECT here; leave that decision to the
	 destructor.  If the destructor is accessible, call it,
	 else report error.  */
      addr = FUNC21 (ADDR_EXPR, addr, 0);
      if (FUNC6 (addr))
	addr = FUNC33 (addr);

      addr = FUNC24 (FUNC20 (type), addr, 0);
    }

  FUNC30 (FUNC4 (type));

  if (FUNC10 (type))
    {
      if (auto_delete != sfk_deleting_destructor)
	return void_zero_node;

      return FUNC19 (DELETE_EXPR, addr,
				   FUNC27 (type),
				   use_global_delete,
				   /*placement=*/NULL_TREE,
				   /*alloc_fn=*/NULL_TREE);
    }
  else
    {
      tree do_delete = NULL_TREE;
      tree ifexp;

      if (FUNC1 (type))
	FUNC32 (sfk_destructor, type);

      /* For `::delete x', we must not use the deleting destructor
	 since then we would not be sure to get the global `operator
	 delete'.  */
      if (use_global_delete && auto_delete == sfk_deleting_destructor)
	{
	  /* We will use ADDR multiple times so we must save it.  */
	  addr = FUNC33 (addr);
	  /* Delete the object.  */
	  do_delete = FUNC16 (addr);
	  /* Otherwise, treat this like a complete object destructor
	     call.  */
	  auto_delete = sfk_complete_destructor;
	}
      /* If the destructor is non-virtual, there is no deleting
	 variant.  Instead, we must explicitly call the appropriate
	 `operator delete' here.  */
      else if (!FUNC3 (FUNC0 (type))
	       && auto_delete == sfk_deleting_destructor)
	{
	  /* We will use ADDR multiple times so we must save it.  */
	  addr = FUNC33 (addr);
	  /* Build the call.  */
	  do_delete = FUNC19 (DELETE_EXPR,
					    addr,
					    FUNC27 (type),
					    /*global_p=*/false,
					    /*placement=*/NULL_TREE,
					    /*alloc_fn=*/NULL_TREE);
	  /* Call the complete object destructor.  */
	  auto_delete = sfk_complete_destructor;
	}
      else if (auto_delete == sfk_deleting_destructor
	       && FUNC9 (type))
	{
	  /* Make sure we have access to the member op delete, even though
	     we'll actually be calling it from the destructor.  */
	  FUNC19 (DELETE_EXPR, addr, FUNC27 (type),
				/*global_p=*/false,
				/*placement=*/NULL_TREE,
				/*alloc_fn=*/NULL_TREE);
	}

      expr = FUNC17 (FUNC18 (addr, NULL),
			      auto_delete, flags);
      if (do_delete)
	expr = FUNC14 (COMPOUND_EXPR, void_type_node, expr, do_delete);

      if (flags & LOOKUP_DESTRUCTOR)
	/* Explicit destructor call; don't check for null pointer.  */
	ifexp = integer_one_node;
      else
	/* Handle deleting a null pointer.  */
	ifexp = FUNC29 (FUNC25 (NE_EXPR, addr, integer_zero_node));

      if (ifexp != integer_one_node)
	expr = FUNC15 (COND_EXPR, void_type_node,
		       ifexp, expr, void_zero_node);

      return expr;
    }
}