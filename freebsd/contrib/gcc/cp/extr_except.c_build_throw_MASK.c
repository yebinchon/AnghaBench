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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  CLEANUP_POINT_EXPR ; 
 int /*<<< orphan*/  COMPOUND_EXPR ; 
 int /*<<< orphan*/  INIT_EXPR ; 
 int LOOKUP_NORMAL ; 
 int LOOKUP_ONLYCONVERTING ; 
 int /*<<< orphan*/  MUST_NOT_THROW_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ TARGET_EXPR ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  THROW_EXPR ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  TRY_CATCH_EXPR ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__) ; 
 scalar_t__ cfun ; 
 scalar_t__ cleanup_type ; 
 int /*<<< orphan*/  complete_ctor_identifier ; 
 int /*<<< orphan*/  complete_dtor_identifier ; 
 int current_function_returns_abnormally ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__,int) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 scalar_t__ FUNC25 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC29 (char*) ; 
 scalar_t__ FUNC30 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__) ; 
 scalar_t__ FUNC32 (scalar_t__) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__) ; 
 scalar_t__ null_node ; 
 int /*<<< orphan*/  FUNC35 (scalar_t__) ; 
 scalar_t__ processing_template_decl ; 
 scalar_t__ ptr_type_node ; 
 scalar_t__ FUNC36 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC37 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC39 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC40 (int /*<<< orphan*/ ) ; 
 scalar_t__ void_list_node ; 
 scalar_t__ void_type_node ; 
 int /*<<< orphan*/  FUNC41 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  wrap_cleanups_r ; 

tree
FUNC43 (tree exp)
{
  tree fn;

  if (exp == error_mark_node)
    return exp;

  if (processing_template_decl)
    {
      if (cfun)
	current_function_returns_abnormally = 1;
      return FUNC16 (THROW_EXPR, void_type_node, exp);
    }

  if (exp == null_node)
    FUNC42 (0, "throwing NULL, which has integral, not pointer type");

  if (exp != NULL_TREE)
    {
      if (!FUNC31 (exp))
	return error_mark_node;
    }

  if (! FUNC26 (1))
    return error_mark_node;

  if (exp && FUNC23 (FUNC5 (exp), 1))
    {
      tree fn = FUNC29 ("_Jv_Throw");
      if (!FUNC28 (fn, &fn))
	{
	  /* Declare void _Jv_Throw (void *).  */
	  tree tmp = FUNC39 (NULL_TREE, ptr_type_node, void_list_node);
	  tmp = FUNC13 (ptr_type_node, tmp);
	  fn = FUNC36 (fn, tmp);
	}
      else if (FUNC37 (fn))
	{
	  FUNC27 ("%qD should never be overloaded", fn);
	  return error_mark_node;
	}
      fn = FUNC2 (fn);
      exp = FUNC12 (fn, FUNC39 (NULL_TREE, exp, NULL_TREE));
    }
  else if (exp)
    {
      tree throw_type;
      tree temp_type;
      tree cleanup;
      tree object, ptr;
      tree tmp;
      tree temp_expr, allocate_expr;
      bool elided;

      /* The CLEANUP_TYPE is the internal type of a destructor.  */
      if (!cleanup_type)
	{
	  tmp = void_list_node;
	  tmp = FUNC39 (NULL_TREE, ptr_type_node, tmp);
	  tmp = FUNC13 (void_type_node, tmp);
	  cleanup_type = FUNC18 (tmp);
	}

      fn = FUNC29 ("__cxa_throw");
      if (!FUNC28 (fn, &fn))
	{
	  /* Declare void __cxa_throw (void*, void*, void (*)(void*)).  */
	  /* ??? Second argument is supposed to be "std::type_info*".  */
	  tmp = void_list_node;
	  tmp = FUNC39 (NULL_TREE, cleanup_type, tmp);
	  tmp = FUNC39 (NULL_TREE, ptr_type_node, tmp);
	  tmp = FUNC39 (NULL_TREE, ptr_type_node, tmp);
	  tmp = FUNC13 (void_type_node, tmp);
	  fn = FUNC36 (fn, tmp);
	}

      /* [except.throw]

	 A throw-expression initializes a temporary object, the type
	 of which is determined by removing any top-level
	 cv-qualifiers from the static type of the operand of throw
	 and adjusting the type from "array of T" or "function return
	 T" to "pointer to T" or "pointer to function returning T"
	 respectively.  */
      temp_type = FUNC32 (exp);
      if (!temp_type)
	temp_type = FUNC40 (FUNC8 (FUNC5 (exp)));

      /* OK, this is kind of wacky.  The standard says that we call
	 terminate when the exception handling mechanism, after
	 completing evaluation of the expression to be thrown but
	 before the exception is caught (_except.throw_), calls a
	 user function that exits via an uncaught exception.

	 So we have to protect the actual initialization of the
	 exception object with terminate(), but evaluate the
	 expression first.  Since there could be temps in the
	 expression, we need to handle that, too.  We also expand
	 the call to __cxa_allocate_exception first (which doesn't
	 matter, since it can't throw).  */

      /* Allocate the space for the exception.  */
      allocate_expr = FUNC24 (temp_type);
      allocate_expr = FUNC30 (allocate_expr);
      ptr = FUNC3 (allocate_expr);
      object = FUNC17 (FUNC18 (temp_type), ptr);
      object = FUNC14 (object, NULL);

      elided = (FUNC4 (exp) == TARGET_EXPR);

      /* And initialize the exception object.  */
      if (FUNC1 (temp_type))
	{
	  /* Call the copy constructor.  */
	  exp = (FUNC19
		 (object, complete_ctor_identifier,
		  FUNC20 (NULL_TREE, exp),
		  FUNC5 (object),
		  LOOKUP_NORMAL | LOOKUP_ONLYCONVERTING));
	  if (exp == error_mark_node)
	    {
	      FUNC27 ("  in thrown expression");
	      return error_mark_node;
	    }
	}
      else
	exp = FUNC10 (INIT_EXPR, temp_type, object,
		      FUNC22 (exp));

      /* Pre-evaluate the thrown expression first, since if we allocated
	 the space first we would have to deal with cleaning it up if
	 evaluating this expression throws.

	 The case where EXP the initializer is a cast or a function
	 returning a class is a bit of a grey area in the standard; it's
	 unclear whether or not it should be allowed to throw.  We used to
	 say no, as that allowed us to optimize this case without worrying
	 about deallocating the exception object if it does.  But that
	 conflicted with expectations (PR 13944) and the EDG compiler; now
	 we wrap the initialization in a TRY_CATCH_EXPR to call
	 do_free_exception rather than in a MUST_NOT_THROW_EXPR, for this
	 case only.

	 BUT: Issue 475 may do away with this inconsistency by removing the
	 terminate() in this situation.

	 Note that we don't check the return value from stabilize_init
	 because it will only return false in cases where elided is true,
	 and therefore we don't need to work around the failure to
	 preevaluate.  */
      temp_expr = NULL_TREE;
      FUNC38 (exp, &temp_expr);

      /* Wrap the initialization in a CLEANUP_POINT_EXPR so that cleanups
	 for temporaries within the initialization are run before the one
	 for the exception object, preserving LIFO order.  */
      exp = FUNC9 (CLEANUP_POINT_EXPR, void_type_node, exp);

      if (elided)
	exp = FUNC10 (TRY_CATCH_EXPR, void_type_node, exp,
		      FUNC25 (ptr));
      else
	exp = FUNC9 (MUST_NOT_THROW_EXPR, void_type_node, exp);

      /* Prepend the allocation.  */
      exp = FUNC10 (COMPOUND_EXPR, FUNC5 (exp), allocate_expr, exp);
      if (temp_expr)
	{
	  /* Prepend the calculation of the throw expression.  Also, force
	     any cleanups from the expression to be evaluated here so that
	     we don't have to do them during unwinding.  But first wrap
	     them in MUST_NOT_THROW_EXPR, since they are run after the
	     exception object is initialized.  */
	  FUNC41 (&temp_expr, wrap_cleanups_r, 0);
	  exp = FUNC10 (COMPOUND_EXPR, FUNC5 (exp), temp_expr, exp);
	  exp = FUNC9 (CLEANUP_POINT_EXPR, FUNC5 (exp), exp);
	}

      throw_type = FUNC11 (FUNC35 (FUNC5 (object)));

      if (FUNC7 (FUNC5 (object)))
	{
	  cleanup = FUNC33 (FUNC6 (FUNC5 (object)),
				     complete_dtor_identifier, 0);
	  cleanup = FUNC0 (cleanup);
	  FUNC34 (cleanup);
	  FUNC21 (cleanup);
	  /* Pretend it's a normal function.  */
	  cleanup = FUNC9 (ADDR_EXPR, cleanup_type, cleanup);
	}
      else
	cleanup = FUNC15 (cleanup_type, 0);

      tmp = FUNC39 (NULL_TREE, cleanup, NULL_TREE);
      tmp = FUNC39 (NULL_TREE, throw_type, tmp);
      tmp = FUNC39 (NULL_TREE, ptr, tmp);
      /* ??? Indicate that this function call throws throw_type.  */
      tmp = FUNC12 (fn, tmp);

      /* Tack on the initialization stuff.  */
      exp = FUNC10 (COMPOUND_EXPR, FUNC5 (tmp), exp, tmp);
    }
  else
    {
      /* Rethrow current exception.  */

      tree fn = FUNC29 ("__cxa_rethrow");
      if (!FUNC28 (fn, &fn))
	{
	  /* Declare void __cxa_rethrow (void).  */
	  fn = FUNC36
	    (fn, FUNC13 (void_type_node, void_list_node));
	}

      /* ??? Indicate that this function call allows exceptions of the type
	 of the enclosing catch block (if known).  */
      exp = FUNC12 (fn, NULL_TREE);
    }

  exp = FUNC9 (THROW_EXPR, void_type_node, exp);

  return exp;
}