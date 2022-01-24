#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char* tree ;
struct z_candidate {TYPE_1__** convs; } ;
struct TYPE_4__ {scalar_t__ kind; int /*<<< orphan*/  bad_p; } ;
typedef  TYPE_1__ conversion ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ BLOCK_POINTER_TYPE ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  COND_EXPR ; 
 scalar_t__ ENUMERAL_TYPE ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 char* NULL_TREE ; 
 scalar_t__ THROW_EXPR ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct z_candidate**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 char* boolean_type_node ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 scalar_t__ ck_ambig ; 
 char* FUNC13 (char*,char*,char*,char*,char*) ; 
 TYPE_1__* FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  conversion_obstack ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 char* FUNC16 (char*) ; 
 char* FUNC17 (TYPE_1__*,char*) ; 
 char* FUNC18 (char*,int) ; 
 char* FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,...) ; 
 char* error_mark_node ; 
 scalar_t__ FUNC21 (char*) ; 
 scalar_t__ extra_warnings ; 
 char* FUNC22 (int /*<<< orphan*/ ) ; 
 char* FUNC23 (char*) ; 
 char* FUNC24 (char*) ; 
 scalar_t__ FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 char* FUNC29 (char*,char*) ; 
 int /*<<< orphan*/  FUNC30 (struct z_candidate*) ; 
 scalar_t__ FUNC31 (char*) ; 
 char* FUNC32 (char*) ; 
 scalar_t__ FUNC33 (char*,char*) ; 
 char* FUNC34 (char*) ; 
 struct z_candidate* FUNC35 (struct z_candidate*,scalar_t__,int*) ; 
 char* FUNC36 (char*) ; 
 struct z_candidate* FUNC37 (struct z_candidate*) ; 
 char* FUNC38 (char*,char*) ; 
 char* FUNC39 (char*) ; 
 char* FUNC40 (char*) ; 
 char* void_type_node ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,char*,...) ; 

tree
FUNC42 (tree arg1, tree arg2, tree arg3)
{
  tree arg2_type;
  tree arg3_type;
  tree result = NULL_TREE;
  tree result_type = NULL_TREE;
  bool lvalue_p = true;
  struct z_candidate *candidates = 0;
  struct z_candidate *cand;
  void *p;

  /* As a G++ extension, the second argument to the conditional can be
     omitted.  (So that `a ? : c' is roughly equivalent to `a ? a :
     c'.)  If the second operand is omitted, make sure it is
     calculated only once.  */
  if (!arg2)
    {
      if (pedantic)
	FUNC28 ("ISO C++ forbids omitting the middle term of a ?: expression");

      /* Make sure that lvalues remain lvalues.  See g++.oliva/ext1.C.  */
      if (FUNC31 (arg1))
	arg2 = arg1 = FUNC36 (arg1);
      else
	arg2 = arg1 = FUNC34 (arg1);
    }

  /* [expr.cond]

     The first expr ession is implicitly converted to bool (clause
     _conv_).  */
  arg1 = FUNC29 (boolean_type_node, arg1);

  /* If something has already gone wrong, just pass that fact up the
     tree.  */
  if (FUNC21 (arg1)
      || FUNC21 (arg2)
      || FUNC21 (arg3))
    return error_mark_node;

  /* [expr.cond]

     If either the second or the third operand has type (possibly
     cv-qualified) void, then the lvalue-to-rvalue (_conv.lval_),
     array-to-pointer (_conv.array_), and function-to-pointer
     (_conv.func_) standard conversions are performed on the second
     and third operands.  */
  arg2_type = FUNC40 (arg2);
  arg3_type = FUNC40 (arg3);
  if (FUNC9 (arg2_type) || FUNC9 (arg3_type))
    {
      /* Do the conversions.  We don't these for `void' type arguments
	 since it can't have any effect and since decay_conversion
	 does not handle that case gracefully.  */
      if (!FUNC9 (arg2_type))
	arg2 = FUNC19 (arg2);
      if (!FUNC9 (arg3_type))
	arg3 = FUNC19 (arg3);
      arg2_type = FUNC3 (arg2);
      arg3_type = FUNC3 (arg3);

      /* [expr.cond]

	 One of the following shall hold:

	 --The second or the third operand (but not both) is a
	   throw-expression (_except.throw_); the result is of the
	   type of the other and is an rvalue.

	 --Both the second and the third operands have type void; the
	   result is of type void and is an rvalue.

	 We must avoid calling force_rvalue for expressions of type
	 "void" because it will complain that their value is being
	 used.  */
      if (FUNC2 (arg2) == THROW_EXPR
	  && FUNC2 (arg3) != THROW_EXPR)
	{
	  if (!FUNC9 (arg3_type))
	    arg3 = FUNC23 (arg3);
	  arg3_type = FUNC3 (arg3);
	  result_type = arg3_type;
	}
      else if (FUNC2 (arg2) != THROW_EXPR
	       && FUNC2 (arg3) == THROW_EXPR)
	{
	  if (!FUNC9 (arg2_type))
	    arg2 = FUNC23 (arg2);
	  arg2_type = FUNC3 (arg2);
	  result_type = arg2_type;
	}
      else if (FUNC9 (arg2_type) && FUNC9 (arg3_type))
	result_type = void_type_node;
      else
	{
	  FUNC20 ("%qE has type %<void%> and is not a throw-expression",
		    FUNC9 (arg2_type) ? arg2 : arg3);
	  return error_mark_node;
	}

      lvalue_p = false;
      goto valid_operands;
    }
  /* [expr.cond]

     Otherwise, if the second and third operand have different types,
     and either has (possibly cv-qualified) class type, an attempt is
     made to convert each of those operands to the type of the other.  */
  else if (!FUNC33 (arg2_type, arg3_type)
	   && (FUNC1 (arg2_type) || FUNC1 (arg3_type)))
    {
      conversion *conv2;
      conversion *conv3;

      /* Get the high-water mark for the CONVERSION_OBSTACK.  */
      p = FUNC15 (0);

      conv2 = FUNC14 (arg2, arg3);
      conv3 = FUNC14 (arg3, arg2);

      /* [expr.cond]

	 If both can be converted, or one can be converted but the
	 conversion is ambiguous, the program is ill-formed.  If
	 neither can be converted, the operands are left unchanged and
	 further checking is performed as described below.  If exactly
	 one conversion is possible, that conversion is applied to the
	 chosen operand and the converted operand is used in place of
	 the original operand for the remainder of this section.  */
      if ((conv2 && !conv2->bad_p
	   && conv3 && !conv3->bad_p)
	  || (conv2 && conv2->kind == ck_ambig)
	  || (conv3 && conv3->kind == ck_ambig))
	{
	  FUNC20 ("operands to ?: have different types %qT and %qT",
		 arg2_type, arg3_type);
	  result = error_mark_node;
	}
      else if (conv2 && (!conv2->bad_p || !conv3))
	{
	  arg2 = FUNC17 (conv2, arg2);
	  arg2 = FUNC16 (arg2);
	  arg2_type = FUNC3 (arg2);
	  /* Even if CONV2 is a valid conversion, the result of the
	     conversion may be invalid.  For example, if ARG3 has type
	     "volatile X", and X does not have a copy constructor
	     accepting a "volatile X&", then even if ARG2 can be
	     converted to X, the conversion will fail.  */
	  if (FUNC21 (arg2))
	    result = error_mark_node;
	}
      else if (conv3 && (!conv3->bad_p || !conv2))
	{
	  arg3 = FUNC17 (conv3, arg3);
	  arg3 = FUNC16 (arg3);
	  arg3_type = FUNC3 (arg3);
	  if (FUNC21 (arg3))
	    result = error_mark_node;
	}

      /* Free all the conversions we allocated.  */
      FUNC26 (&conversion_obstack, p);

      if (result)
	return result;

      /* If, after the conversion, both operands have class type,
	 treat the cv-qualification of both operands as if it were the
	 union of the cv-qualification of the operands.

	 The standard is not clear about what to do in this
	 circumstance.  For example, if the first operand has type
	 "const X" and the second operand has a user-defined
	 conversion to "volatile X", what is the type of the second
	 operand after this step?  Making it be "const X" (matching
	 the first operand) seems wrong, as that discards the
	 qualification without actually performing a copy.  Leaving it
	 as "volatile X" seems wrong as that will result in the
	 conditional expression failing altogether, even though,
	 according to this step, the one operand could be converted to
	 the type of the other.  */
      if ((conv2 || conv3)
	  && FUNC1 (arg2_type)
	  && FUNC8 (arg2_type) != FUNC8 (arg3_type))
	arg2_type = arg3_type =
	  FUNC18 (arg2_type,
				   FUNC8 (arg2_type)
				   | FUNC8 (arg3_type));
    }

  /* [expr.cond]

     If the second and third operands are lvalues and have the same
     type, the result is of that type and is an lvalue.  */
  if (FUNC31 (arg2)
      && FUNC31 (arg3)
      && FUNC33 (arg2_type, arg3_type))
    {
      result_type = arg2_type;
      goto valid_operands;
    }

  /* [expr.cond]

     Otherwise, the result is an rvalue.  If the second and third
     operand do not have the same type, and either has (possibly
     cv-qualified) class type, overload resolution is used to
     determine the conversions (if any) to be applied to the operands
     (_over.match.oper_, _over.built_).  */
  lvalue_p = false;
  if (!FUNC33 (arg2_type, arg3_type)
      && (FUNC1 (arg2_type) || FUNC1 (arg3_type)))
    {
      tree args[3];
      conversion *conv;
      bool any_viable_p;

      /* Rearrange the arguments so that add_builtin_candidate only has
	 to know about two args.  In build_builtin_candidates, the
	 arguments are unscrambled.  */
      args[0] = arg2;
      args[1] = arg3;
      args[2] = arg1;
      FUNC10 (&candidates,
			      COND_EXPR,
			      NOP_EXPR,
			      FUNC11 (COND_EXPR),
			      args,
			      LOOKUP_NORMAL);

      /* [expr.cond]

	 If the overload resolution fails, the program is
	 ill-formed.  */
      candidates = FUNC35 (candidates, pedantic, &any_viable_p);
      if (!any_viable_p)
	{
	  FUNC27 (COND_EXPR, NOP_EXPR, arg1, arg2, arg3, "no match");
	  FUNC30 (candidates);
	  return error_mark_node;
	}
      cand = FUNC37 (candidates);
      if (!cand)
	{
	  FUNC27 (COND_EXPR, NOP_EXPR, arg1, arg2, arg3, "no match");
	  FUNC30 (candidates);
	  return error_mark_node;
	}

      /* [expr.cond]

	 Otherwise, the conversions thus determined are applied, and
	 the converted operands are used in place of the original
	 operands for the remainder of this section.  */
      conv = cand->convs[0];
      arg1 = FUNC17 (conv, arg1);
      conv = cand->convs[1];
      arg2 = FUNC17 (conv, arg2);
      conv = cand->convs[2];
      arg3 = FUNC17 (conv, arg3);
    }

  /* [expr.cond]

     Lvalue-to-rvalue (_conv.lval_), array-to-pointer (_conv.array_),
     and function-to-pointer (_conv.func_) standard conversions are
     performed on the second and third operands.

     We need to force the lvalue-to-rvalue conversion here for class types,
     so we get TARGET_EXPRs; trying to deal with a COND_EXPR of class rvalues
     that isn't wrapped with a TARGET_EXPR plays havoc with exception
     regions.  */

  arg2 = FUNC23 (arg2);
  if (!FUNC1 (arg2_type))
    arg2_type = FUNC3 (arg2);

  arg3 = FUNC23 (arg3);
  if (!FUNC1 (arg2_type))
    arg3_type = FUNC3 (arg3);

  if (arg2 == error_mark_node || arg3 == error_mark_node)
    return error_mark_node;

  /* [expr.cond]

     After those conversions, one of the following shall hold:

     --The second and third operands have the same type; the result  is  of
       that type.  */
  if (FUNC33 (arg2_type, arg3_type))
    result_type = arg2_type;
  /* [expr.cond]

     --The second and third operands have arithmetic or enumeration
       type; the usual arithmetic conversions are performed to bring
       them to a common type, and the result is of that type.  */
  else if ((FUNC0 (arg2_type)
	    || FUNC2 (arg2_type) == ENUMERAL_TYPE)
	   && (FUNC0 (arg3_type)
	       || FUNC2 (arg3_type) == ENUMERAL_TYPE))
    {
      /* In this case, there is always a common type.  */
      result_type = FUNC38 (arg2_type,
							     arg3_type);

      if (FUNC2 (arg2_type) == ENUMERAL_TYPE
	  && FUNC2 (arg3_type) == ENUMERAL_TYPE)
	 FUNC41 (0, "enumeral mismatch in conditional expression: %qT vs %qT",
		   arg2_type, arg3_type);
      else if (extra_warnings
	       && ((FUNC2 (arg2_type) == ENUMERAL_TYPE
		    && !FUNC33 (arg3_type, FUNC39 (arg2_type)))
		   || (FUNC2 (arg3_type) == ENUMERAL_TYPE
		       && !FUNC33 (arg2_type, FUNC39 (arg3_type)))))
	FUNC41 (0, "enumeral and non-enumeral type in conditional expression");

      arg2 = FUNC29 (result_type, arg2);
      arg3 = FUNC29 (result_type, arg3);
    }
  /* [expr.cond]

     --The second and third operands have pointer type, or one has
       pointer type and the other is a null pointer constant; pointer
       conversions (_conv.ptr_) and qualification conversions
       (_conv.qual_) are performed to bring them to their composite
       pointer type (_expr.rel_).  The result is of the composite
       pointer type.

     --The second and third operands have pointer to member type, or
       one has pointer to member type and the other is a null pointer
       constant; pointer to member conversions (_conv.mem_) and
       qualification conversions (_conv.qual_) are performed to bring
       them to a common type, whose cv-qualification shall match the
       cv-qualification of either the second or the third operand.
       The result is of the common type.  */
  else if ((FUNC25 (arg2)
	   /* APPLE LOCAL begin blocks 6040305 (co) */
	    && (FUNC6 (arg3_type) || FUNC7 (arg3_type)
		|| FUNC2 (arg3_type) == BLOCK_POINTER_TYPE))
	   /* APPLE LOCAL end blocks 6040305 (co) */
	   || (FUNC25 (arg3)
	   /* APPLE LOCAL begin blocks 6040305 (co) */
	       && (FUNC6 (arg2_type) || FUNC7 (arg2_type)
		   || FUNC2 (arg2_type) == BLOCK_POINTER_TYPE))
	   || ((FUNC6 (arg2_type)
		||  FUNC2 (arg2_type) == BLOCK_POINTER_TYPE)
	       && (FUNC6 (arg3_type)
		   || FUNC2 (arg3_type) == BLOCK_POINTER_TYPE))
	   /* APPLE LOCAL end blocks 6040305 (co) */
	   || (FUNC5 (arg2_type) && FUNC5 (arg3_type))
	   || (FUNC4 (arg2_type) && FUNC4 (arg3_type)))
    {
      result_type = FUNC13 (arg2_type, arg3_type, arg2,
					    arg3, "conditional expression");
      if (result_type == error_mark_node)
	return error_mark_node;
      arg2 = FUNC29 (result_type, arg2);
      arg3 = FUNC29 (result_type, arg3);
    }

  if (!result_type)
    {
      FUNC20 ("operands to ?: have different types %qT and %qT",
	     arg2_type, arg3_type);
      return error_mark_node;
    }

 valid_operands:
  result = FUNC22 (FUNC12 (COND_EXPR, result_type, arg1,
					    arg2, arg3));
  /* We can't use result_type below, as fold might have returned a
     throw_expr.  */

  if (!lvalue_p)
    {
      /* Expand both sides into the same slot, hopefully the target of
	 the ?: expression.  We used to check for TARGET_EXPRs here,
	 but now we sometimes wrap them in NOP_EXPRs so the test would
	 fail.  */
      if (FUNC1 (FUNC3 (result)))
	result = FUNC24 (result);
      /* If this expression is an rvalue, but might be mistaken for an
	 lvalue, we must add a NON_LVALUE_EXPR.  */
      result = FUNC32 (result);
    }

  return result;
}