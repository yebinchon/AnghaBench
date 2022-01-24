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
typedef  enum tree_code_class { ____Placeholder_tree_code_class } tree_code_class ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 int const AGGR_INIT_EXPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
#define  CALL_EXPR 135 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int const COMPONENT_REF ; 
#define  COMPOUND_EXPR 134 
#define  COND_EXPR 133 
 int /*<<< orphan*/  CONVERT_EXPR ; 
#define  INDIRECT_REF 132 
 int INIT_EXPR ; 
 int MODIFY_EXPR ; 
#define  NON_LVALUE_EXPR 131 
#define  NOP_EXPR 130 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  OPT_Waddress ; 
 int /*<<< orphan*/  OPT_Wunused_value ; 
 int POSTDECREMENT_EXPR ; 
 int POSTINCREMENT_EXPR ; 
 int PREDECREMENT_EXPR ; 
 int PREINCREMENT_EXPR ; 
 int const PSEUDO_DTOR_EXPR ; 
 int const REFERENCE_TYPE ; 
#define  TARGET_EXPR 129 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int const FUNC5 (scalar_t__) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int FUNC12 (scalar_t__) ; 
#define  VAR_DECL 128 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (int const,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (int const,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (char*,char const*) ; 
 int /*<<< orphan*/  processing_template_decl ; 
 int tcc_binary ; 
 int tcc_comparison ; 
 int tcc_unary ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  void_type_node ; 
 scalar_t__ void_zero_node ; 
 scalar_t__ warn_unused_value ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,...) ; 

tree
FUNC24 (tree expr, const char *implicit)
{
  if (expr == error_mark_node
      || FUNC10 (expr) == error_mark_node)
    return error_mark_node;
  if (!FUNC10 (expr))
    return expr;
  if (FUNC19 (expr))
    return error_mark_node;
  if (FUNC5 (expr) == PSEUDO_DTOR_EXPR)
    {
      FUNC18 ("pseudo-destructor is not called");
      return error_mark_node;
    }
  if (FUNC13 (FUNC10 (expr)))
    return expr;
  switch (FUNC5 (expr))
    {
    case COND_EXPR:
      {
	/* The two parts of a cond expr might be separate lvalues.  */
	tree op1 = FUNC8 (expr,1);
	tree op2 = FUNC8 (expr,2);
	tree new_op1 = FUNC24
	  (op1, (implicit && !FUNC9 (op2)
		 ? "second operand of conditional" : NULL));
	tree new_op2 = FUNC24
	  (op2, (implicit && !FUNC9 (op1)
		 ? "third operand of conditional" : NULL));

	expr = FUNC16 (COND_EXPR, FUNC10 (new_op1),
		       FUNC8 (expr, 0), new_op1, new_op2);
	break;
      }

    case COMPOUND_EXPR:
      {
	/* The second part of a compound expr contains the value.  */
	tree op1 = FUNC8 (expr,1);
	tree new_op1 = FUNC24
	  (op1, (implicit && !FUNC7 (expr)
		 ? "right-hand operand of comma" : NULL));

	if (new_op1 != op1)
	  {
	    tree t = FUNC15 (COMPOUND_EXPR, FUNC10 (new_op1),
			     FUNC8 (expr, 0), new_op1);
	    expr = t;
	  }

	break;
      }

    case NON_LVALUE_EXPR:
    case NOP_EXPR:
      /* These have already decayed to rvalue.  */
      break;

    case CALL_EXPR:   /* We have a special meaning for volatile void fn().  */
      break;

    case INDIRECT_REF:
      {
	tree type = FUNC10 (expr);
	int is_reference = FUNC5 (FUNC10 (FUNC8 (expr, 0)))
			   == REFERENCE_TYPE;
	int is_volatile = FUNC12 (type);
	int is_complete = FUNC1 (FUNC17 (type));

	/* Can't load the value if we don't know the type.  */
	if (is_volatile && !is_complete)
	  FUNC23 (0, "object of incomplete type %qT will not be accessed in %s",
		   type, implicit ? implicit : "void context");
	/* Don't load the value if this is an implicit dereference, or if
	   the type needs to be handled by ctors/dtors.  */
	else if (is_volatile && (is_reference || FUNC4 (type)))
	  FUNC23 (0, "object of type %qT will not be accessed in %s",
		   FUNC10 (FUNC8 (expr, 0)),
		   implicit ? implicit : "void context");
	if (is_reference || !is_volatile || !is_complete || FUNC4 (type))
	  expr = FUNC8 (expr, 0);

	break;
      }

    case VAR_DECL:
      {
	/* External variables might be incomplete.  */
	tree type = FUNC10 (expr);
	int is_complete = FUNC1 (FUNC17 (type));

	if (FUNC12 (type) && !is_complete)
	  FUNC23 (0, "object %qE of incomplete type %qT will not be accessed in %s",
		   expr, type, implicit ? implicit : "void context");
	break;
      }

    case TARGET_EXPR:
      /* Don't bother with the temporary object returned from a function if
	 we don't use it and don't need to destroy it.  We'll still
	 allocate space for it in expand_call or declare_return_variable,
	 but we don't need to track it through all the tree phases.  */
      if (FUNC2 (expr)
	  && FUNC11 (FUNC10 (expr)))
	{
	  tree init = FUNC3 (expr);
	  if (FUNC5 (init) == AGGR_INIT_EXPR
	      && !FUNC0 (init))
	    {
	      tree fn = FUNC8 (init, 0);
	      expr = FUNC16 (CALL_EXPR, FUNC10 (FUNC10 (FUNC10 (fn))),
			     fn, FUNC8 (init, 1), NULL_TREE);
	    }
	}
      break;

    default:;
    }
  {
    tree probe = expr;

    if (FUNC5 (probe) == ADDR_EXPR)
      probe = FUNC8 (expr, 0);
    if (FUNC22 (probe))
      {
	/* [over.over] enumerates the places where we can take the address
	   of an overloaded function, and this is not one of them.  */
	FUNC21 ("%s cannot resolve address of overloaded function",
		    implicit ? implicit : "void cast");
	expr = void_zero_node;
      }
    else if (implicit && probe == expr && FUNC20 (probe))
      {
	/* Only warn when there is no &.  */
	FUNC23 (OPT_Waddress, "%s is a reference, not call, to function %qE",
		 implicit, expr);
	if (FUNC5 (expr) == COMPONENT_REF)
	  expr = FUNC8 (expr, 0);
      }
  }

  if (expr != error_mark_node && !FUNC13 (FUNC10 (expr)))
    {
      if (implicit
	  && warn_unused_value
	  && !FUNC7 (expr)
	  && !processing_template_decl)
	{
	  /* The middle end does not warn about expressions that have
	     been explicitly cast to void, so we must do so here.  */
	  if (!FUNC9 (expr))
	    FUNC23 (OPT_Wunused_value, "%s has no effect", implicit);
	  else
	    {
	      tree e;
	      enum tree_code code;
	      enum tree_code_class class;

	      e = expr;
	      /* We might like to warn about (say) "(int) f()", as the
		 cast has no effect, but the compiler itself will
		 generate implicit conversions under some
		 circumstances.  (For example a block copy will be
		 turned into a call to "__builtin_memcpy", with a
		 conversion of the return value to an appropriate
		 type.)  So, to avoid false positives, we strip
		 conversions.  Do not use STRIP_NOPs because it will
		 not strip conversions to "void", as that is not a
		 mode-preserving conversion.  */
	      while (FUNC5 (e) == NOP_EXPR)
		e = FUNC8 (e, 0);

	      code = FUNC5 (e);
	      class = FUNC6 (code);
	      if (class == tcc_comparison
		   || class == tcc_unary
		   || (class == tcc_binary
		       && !(code == MODIFY_EXPR
			    || code == INIT_EXPR
			    || code == PREDECREMENT_EXPR
			    || code == PREINCREMENT_EXPR
			    || code == POSTDECREMENT_EXPR
			    || code == POSTINCREMENT_EXPR)))
		FUNC23 (OPT_Wunused_value, "value computed is not used");
	    }
	}
      expr = FUNC14 (CONVERT_EXPR, void_type_node, expr);
    }
  if (! FUNC9 (expr))
    expr = void_zero_node;
  return expr;
}