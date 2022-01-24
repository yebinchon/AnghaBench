#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct value {int dummy; } ;
struct type {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
typedef  enum noside { ____Placeholder_noside } noside ;
typedef  enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
typedef  enum ada_attribute { ____Placeholder_ada_attribute } ada_attribute ;
struct TYPE_2__ {int opcode; int /*<<< orphan*/  string; int /*<<< orphan*/  longconst; int /*<<< orphan*/  symbol; struct type* type; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
#define  BINOP_ADD 149 
#define  BINOP_ASSIGN 148 
#define  BINOP_DIV 147 
#define  BINOP_EXP 146 
 int BINOP_MOD ; 
#define  BINOP_MUL 145 
 int BINOP_REM ; 
#define  BINOP_SUB 144 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EVAL_AVOID_SIDE_EFFECTS ; 
 int /*<<< orphan*/  EVAL_NORMAL ; 
 int EVAL_SKIP ; 
 struct type* NULL_TYPE ; 
#define  OP_ARRAY 143 
#define  OP_FUNCALL 142 
 int /*<<< orphan*/  OP_NULL ; 
#define  OP_TYPE 141 
#define  OP_VAR_VALUE 140 
#define  STRUCTOP_PTR 139 
#define  STRUCTOP_STRUCT 138 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  TERNOP_SLICE 137 
 int const FUNC2 (struct type*) ; 
#define  TYPE_CODE_ARRAY 136 
#define  TYPE_CODE_FUNC 135 
 int const TYPE_CODE_INT ; 
#define  TYPE_CODE_PTR 134 
 int const TYPE_CODE_REF ; 
#define  TYPE_CODE_STRUCT 133 
 struct type* FUNC3 (struct type*) ; 
#define  UNOP_ABS 132 
#define  UNOP_CAST 131 
#define  UNOP_IND 130 
#define  UNOP_NEG 129 
#define  UNOP_PLUS 128 
 scalar_t__ FUNC4 (struct value*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 scalar_t__ FUNC6 (struct value*) ; 
 struct type* FUNC7 (struct value*) ; 
 struct type* FUNC8 (struct type*) ; 
 int FUNC9 (struct type*) ; 
 struct type* FUNC10 (struct type*,int) ; 
 struct value* FUNC11 (struct value*) ; 
 struct value* FUNC12 (struct value*) ; 
 int /*<<< orphan*/  FUNC13 (struct type*) ; 
 int /*<<< orphan*/  FUNC14 (struct type*) ; 
 int /*<<< orphan*/  FUNC15 (struct type*) ; 
 struct type* FUNC16 (struct type*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct value* FUNC17 (struct type*,int /*<<< orphan*/ ,scalar_t__,struct value*) ; 
 int /*<<< orphan*/  FUNC18 (struct type*) ; 
 struct type* FUNC19 (struct value*,int /*<<< orphan*/ ) ; 
 struct value* FUNC20 (struct value*,struct value*) ; 
 struct value* FUNC21 (struct value*) ; 
 struct value* FUNC22 (struct value*,struct type*,int,struct value**) ; 
 struct value* FUNC23 (struct value*,int /*<<< orphan*/ *,char*) ; 
 struct value* FUNC24 (struct value*,int,struct value**) ; 
 scalar_t__ FUNC25 (int) ; 
 struct value* FUNC26 (struct type*) ; 
 int /*<<< orphan*/  FUNC27 (int,struct value*,struct value*) ; 
 struct type* builtin_type_int ; 
 int /*<<< orphan*/  builtin_type_long ; 
 struct type* builtin_type_void ; 
 struct value* FUNC28 (struct value*,int,struct value**) ; 
 struct value* FUNC29 (struct value*) ; 
 struct value* FUNC30 (struct type*,struct value*) ; 
 struct type* FUNC31 (struct type*) ; 
 struct value* FUNC32 (struct type*,struct value*) ; 
 int /*<<< orphan*/  FUNC33 (char*,...) ; 
 struct value* FUNC34 (struct type*,struct expression*,int*,int) ; 
 struct value* FUNC35 (struct type*,struct expression*,int*,int) ; 
 struct value* FUNC36 (struct expression*,int*,int) ; 
 int FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lval_memory ; 
 int /*<<< orphan*/  not_lval ; 
 struct type* FUNC38 (int /*<<< orphan*/ ) ; 
 struct type* FUNC39 (struct type*,int /*<<< orphan*/ *,int) ; 
 struct type* FUNC40 (struct type*) ; 
 int /*<<< orphan*/  FUNC41 (int,struct value*) ; 
 struct value* FUNC42 (struct value*) ; 
 struct value* FUNC43 (struct value*,struct value*) ; 
 struct value* FUNC44 (struct value*) ; 
 struct value* FUNC45 (int,int,struct value**) ; 
 int FUNC46 (struct value*) ; 
 struct value* FUNC47 (struct type*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct value* FUNC48 (struct value*,struct value*,int) ; 
 struct value* FUNC49 (struct type*,struct value*) ; 
 struct value* FUNC50 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (struct value*,struct value*) ; 
 struct value* FUNC52 (struct value*) ; 
 struct value* FUNC53 (struct value*,int,int) ; 
 struct value* FUNC54 (struct value*,struct value*) ; 
 struct value* FUNC55 (struct value*,struct value*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct value* FUNC56 (struct value*,int,int /*<<< orphan*/ ) ; 
 struct value* FUNC57 (struct type*,int /*<<< orphan*/ ) ; 

struct value *
FUNC58 (struct type *expect_type, struct expression *exp,
		     int *pos, enum noside noside)
{
  enum exp_opcode op;
  enum ada_attribute atr;
  int tem, tem2, tem3;
  int pc;
  struct value *arg1 = NULL, *arg2 = NULL, *arg3;
  struct type *type;
  int nargs;
  struct value **argvec;

  pc = *pos;
  *pos += 1;
  op = exp->elts[pc].opcode;

  switch (op)
    {
    default:
      *pos -= 1;
      return
	FUNC42 (FUNC35
		      (expect_type, exp, pos, noside));

    case UNOP_CAST:
      (*pos) += 2;
      type = exp->elts[pc + 1].type;
      arg1 = FUNC34 (type, exp, pos, noside);
      if (noside == EVAL_SKIP)
	goto nosideret;
      if (type != FUNC31 (FUNC7 (arg1)))
	{
	  if (FUNC14 (type))
	    arg1 = FUNC30 (type, arg1);
	  else if (FUNC14 (FUNC7 (arg1)))
	    arg1 = FUNC49 (type, FUNC29 (arg1));
	  else if (FUNC5 (arg1) == lval_memory)
	    {
	      /* This is in case of the really obscure (and undocumented,
	         but apparently expected) case of (Foo) Bar.all, where Bar 
	         is an integer constant and Foo is a dynamic-sized type.
	         If we don't do this, ARG1 will simply be relabeled with
	         TYPE. */
	      if (noside == EVAL_AVOID_SIDE_EFFECTS)
		return FUNC57 (FUNC40 (type), not_lval);
	      arg1 =
		FUNC17
		(type, 0, FUNC4 (arg1) + FUNC6 (arg1), 0);
	    }
	  else
	    arg1 = FUNC49 (type, arg1);
	}
      return arg1;

      /* FIXME:  UNOP_QUAL should be defined in expression.h */
      /*    case UNOP_QUAL:
         (*pos) += 2;
         type = exp->elts[pc + 1].type;
         return ada_evaluate_subexp (type, exp, pos, noside);
       */
    case BINOP_ASSIGN:
      arg1 = FUNC34 (NULL_TYPE, exp, pos, noside);
      arg2 = FUNC34 (FUNC7 (arg1), exp, pos, noside);
      if (noside == EVAL_SKIP || noside == EVAL_AVOID_SIDE_EFFECTS)
	return arg1;
      if (FUNC27 (op, arg1, arg2))
	return FUNC55 (arg1, arg2, op, OP_NULL, EVAL_NORMAL);
      else
	{
	  if (FUNC14 (FUNC7 (arg1)))
	    arg2 = FUNC30 (FUNC7 (arg1), arg2);
	  else if (FUNC14 (FUNC7 (arg2)))
	    FUNC33
	      ("Fixed-point values must be assigned to fixed-point variables");
	  else
	    arg2 = FUNC32 (FUNC7 (arg1), arg2);
	  return FUNC20 (arg1, arg2);
	}

    case BINOP_ADD:
      arg1 = FUNC36 (exp, pos, noside);
      arg2 = FUNC36 (exp, pos, noside);
      if (noside == EVAL_SKIP)
	goto nosideret;
      if (FUNC27 (op, arg1, arg2))
	return FUNC55 (arg1, arg2, op, OP_NULL, EVAL_NORMAL);
      else
	{
	  if ((FUNC14 (FUNC7 (arg1))
	       || FUNC14 (FUNC7 (arg2)))
	      && FUNC7 (arg1) != FUNC7 (arg2))
	    FUNC33
	      ("Operands of fixed-point addition must have the same type");
	  return FUNC49 (FUNC7 (arg1), FUNC43 (arg1, arg2));
	}

    case BINOP_SUB:
      arg1 = FUNC36 (exp, pos, noside);
      arg2 = FUNC36 (exp, pos, noside);
      if (noside == EVAL_SKIP)
	goto nosideret;
      if (FUNC27 (op, arg1, arg2))
	return FUNC55 (arg1, arg2, op, OP_NULL, EVAL_NORMAL);
      else
	{
	  if ((FUNC14 (FUNC7 (arg1))
	       || FUNC14 (FUNC7 (arg2)))
	      && FUNC7 (arg1) != FUNC7 (arg2))
	    FUNC33
	      ("Operands of fixed-point subtraction must have the same type");
	  return FUNC49 (FUNC7 (arg1), FUNC54 (arg1, arg2));
	}

    case BINOP_MUL:
    case BINOP_DIV:
      arg1 = FUNC34 (NULL_TYPE, exp, pos, noside);
      arg2 = FUNC34 (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
	goto nosideret;
      if (FUNC27 (op, arg1, arg2))
	return FUNC55 (arg1, arg2, op, OP_NULL, EVAL_NORMAL);
      else
	if (noside == EVAL_AVOID_SIDE_EFFECTS
	    && (op == BINOP_DIV || op == BINOP_REM || op == BINOP_MOD))
	return FUNC57 (FUNC7 (arg1), not_lval);
      else
	{
	  if (FUNC14 (FUNC7 (arg1)))
	    arg1 = FUNC29 (arg1);
	  if (FUNC14 (FUNC7 (arg2)))
	    arg2 = FUNC29 (arg2);
	  return FUNC48 (arg1, arg2, op);
	}

    case UNOP_NEG:
      arg1 = FUNC34 (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
	goto nosideret;
      if (FUNC41 (op, arg1))
	return FUNC56 (arg1, op, EVAL_NORMAL);
      else if (FUNC14 (FUNC7 (arg1)))
	return FUNC49 (FUNC7 (arg1), FUNC52 (arg1));
      else
	return FUNC52 (arg1);

      /* FIXME:  OP_UNRESOLVED_VALUE should be defined in expression.h */
      /*    case OP_UNRESOLVED_VALUE:
         /* Only encountered when an unresolved symbol occurs in a
         context other than a function call, in which case, it is
   illegal. *//*
   (*pos) += 3;
   if (noside == EVAL_SKIP)
   goto nosideret;
   else 
   error ("Unexpected unresolved symbol, %s, during evaluation",
   ada_demangle (exp->elts[pc + 2].name));
 */
    case OP_VAR_VALUE:
      *pos -= 1;
      if (noside == EVAL_SKIP)
	{
	  *pos += 4;
	  goto nosideret;
	}
      else if (noside == EVAL_AVOID_SIDE_EFFECTS)
	{
	  *pos += 4;
	  return FUNC57
	    (FUNC40
	     (FUNC38 (FUNC1 (exp->elts[pc + 2].symbol))),
	     not_lval);
	}
      else
	{
	  arg1 =
	    FUNC42 (FUNC35
			  (expect_type, exp, pos, noside));
	  return FUNC17 (FUNC7 (arg1), 0,
				     FUNC4 (arg1) +
				     FUNC6 (arg1), arg1);
	}

    case OP_ARRAY:
      (*pos) += 3;
      tem2 = FUNC37 (exp->elts[pc + 1].longconst);
      tem3 = FUNC37 (exp->elts[pc + 2].longconst);
      nargs = tem3 - tem2 + 1;
      type = expect_type ? FUNC31 (expect_type) : NULL_TYPE;

      argvec =
	(struct value * *) FUNC25 (sizeof (struct value *) * (nargs + 1));
      for (tem = 0; tem == 0 || tem < nargs; tem += 1)
	/* At least one element gets inserted for the type */
	{
	  /* Ensure that array expressions are coerced into pointer objects. */
	  argvec[tem] = FUNC36 (exp, pos, noside);
	}
      if (noside == EVAL_SKIP)
	goto nosideret;
      return FUNC45 (tem2, tem3, argvec);

    case OP_FUNCALL:
      (*pos) += 2;

      /* Allocate arg vector, including space for the function to be
         called in argvec[0] and a terminating NULL */
      nargs = FUNC37 (exp->elts[pc + 1].longconst);
      argvec =
	(struct value * *) FUNC25 (sizeof (struct value *) * (nargs + 2));

      /* FIXME: OP_UNRESOLVED_VALUE should be defined in expression.h */
      /* FIXME: name should be defined in expresion.h */
      /*      if (exp->elts[*pos].opcode == OP_UNRESOLVED_VALUE)
         error ("Unexpected unresolved symbol, %s, during evaluation",
         ada_demangle (exp->elts[pc + 5].name));
       */
      if (0)
	{
	  FUNC33 ("unexpected code path, FIXME");
	}
      else
	{
	  for (tem = 0; tem <= nargs; tem += 1)
	    argvec[tem] = FUNC34 (NULL_TYPE, exp, pos, noside);
	  argvec[tem] = 0;

	  if (noside == EVAL_SKIP)
	    goto nosideret;
	}

      if (FUNC2 (FUNC7 (argvec[0])) == TYPE_CODE_REF)
	argvec[0] = FUNC44 (argvec[0]);

      if (FUNC15 (FUNC7 (argvec[0])))
	argvec[0] = FUNC12 (argvec[0]);

      type = FUNC31 (FUNC7 (argvec[0]));
      if (FUNC2 (type) == TYPE_CODE_PTR)
	{
	  switch (FUNC2 (FUNC31 (FUNC3 (type))))
	    {
	    case TYPE_CODE_FUNC:
	      type = FUNC31 (FUNC3 (type));
	      break;
	    case TYPE_CODE_ARRAY:
	      break;
	    case TYPE_CODE_STRUCT:
	      if (noside != EVAL_AVOID_SIDE_EFFECTS)
		argvec[0] = FUNC21 (argvec[0]);
	      type = FUNC31 (FUNC3 (type));
	      break;
	    default:
	      FUNC33 ("cannot subscript or call something of type `%s'",
		     FUNC18 (FUNC7 (argvec[0])));
	      break;
	    }
	}

      switch (FUNC2 (type))
	{
	case TYPE_CODE_FUNC:
	  if (noside == EVAL_AVOID_SIDE_EFFECTS)
	    return FUNC26 (FUNC3 (type));
	  return FUNC28 (argvec[0], nargs, argvec + 1);
	case TYPE_CODE_STRUCT:
	  {
	    int arity = FUNC9 (type);
	    type = FUNC10 (type, nargs);
	    if (type == NULL)
	      FUNC33 ("cannot subscript or call a record");
	    if (arity != nargs)
	      FUNC33 ("wrong number of subscripts; expecting %d", arity);
	    if (noside == EVAL_AVOID_SIDE_EFFECTS)
	      return FUNC26 (FUNC8 (type));
	    return
	      FUNC42 (FUNC24
			    (argvec[0], nargs, argvec + 1));
	  }
	case TYPE_CODE_ARRAY:
	  if (noside == EVAL_AVOID_SIDE_EFFECTS)
	    {
	      type = FUNC10 (type, nargs);
	      if (type == NULL)
		FUNC33 ("element type of array unknown");
	      else
		return FUNC26 (FUNC8 (type));
	    }
	  return
	    FUNC42 (FUNC24
			  (FUNC12 (argvec[0]),
			   nargs, argvec + 1));
	case TYPE_CODE_PTR:	/* Pointer to array */
	  type = FUNC39 (FUNC3 (type), NULL, 1);
	  if (noside == EVAL_AVOID_SIDE_EFFECTS)
	    {
	      type = FUNC10 (type, nargs);
	      if (type == NULL)
		FUNC33 ("element type of array unknown");
	      else
		return FUNC26 (FUNC8 (type));
	    }
	  return
	    FUNC42 (FUNC22 (argvec[0], type,
						   nargs, argvec + 1));

	default:
	  FUNC33 ("Internal error in evaluate_subexp");
	}

    case TERNOP_SLICE:
      {
	struct value *array = FUNC34 (NULL_TYPE, exp, pos, noside);
	int lowbound
	  = FUNC46 (FUNC34 (NULL_TYPE, exp, pos, noside));
	int upper
	  = FUNC46 (FUNC34 (NULL_TYPE, exp, pos, noside));
	if (noside == EVAL_SKIP)
	  goto nosideret;

	/* If this is a reference to an array, then dereference it */
	if (FUNC2 (FUNC7 (array)) == TYPE_CODE_REF
	    && FUNC3 (FUNC7 (array)) != NULL
	    && FUNC2 (FUNC3 (FUNC7 (array))) ==
	    TYPE_CODE_ARRAY
	    && !FUNC13 (FUNC31 (FUNC7 (array))))
	  {
	    array = FUNC11 (array);
	  }

	if (noside == EVAL_AVOID_SIDE_EFFECTS &&
	    FUNC13 (FUNC31 (FUNC7 (array))))
	  {
	    /* Try to dereference the array, in case it is an access to array */
	    struct type *arrType = FUNC19 (array, 0);
	    if (arrType != NULL)
	      array = FUNC47 (arrType, 0, NULL);
	  }
	if (FUNC13 (FUNC7 (array)))
	  array = FUNC12 (array);

	/* If at this point we have a pointer to an array, it means that
	   it is a pointer to a simple (non-ada) array. We just then
	   dereference it */
	if (FUNC2 (FUNC7 (array)) == TYPE_CODE_PTR
	    && FUNC3 (FUNC7 (array)) != NULL
	    && FUNC2 (FUNC3 (FUNC7 (array))) ==
	    TYPE_CODE_ARRAY)
	  {
	    array = FUNC21 (array);
	  }

	if (noside == EVAL_AVOID_SIDE_EFFECTS)
	  /* The following will get the bounds wrong, but only in contexts
	     where the value is not being requested (FIXME?). */
	  return array;
	else
	  return FUNC53 (array, lowbound, upper - lowbound + 1);
      }

      /* FIXME: UNOP_MBR should be defined in expression.h */
      /*    case UNOP_MBR:
         (*pos) += 2;
         arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
         type = exp->elts[pc + 1].type;

         if (noside == EVAL_SKIP)
         goto nosideret;

         switch (TYPE_CODE (type)) 
         {
         default:
         warning ("Membership test incompletely implemented; always returns true");
         return value_from_longest (builtin_type_int, (LONGEST) 1);

         case TYPE_CODE_RANGE:
         arg2 = value_from_longest (builtin_type_int, 
         (LONGEST) TYPE_LOW_BOUND (type));
         arg3 = value_from_longest (builtin_type_int, 
         (LONGEST) TYPE_HIGH_BOUND (type));
         return 
         value_from_longest (builtin_type_int,
         (value_less (arg1,arg3) 
         || value_equal (arg1,arg3))
         && (value_less (arg2,arg1)
         || value_equal (arg2,arg1)));
         }
       */
      /* FIXME: BINOP_MBR should be defined in expression.h */
      /*    case BINOP_MBR:
         (*pos) += 2;
         arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
         arg2 = evaluate_subexp (NULL_TYPE, exp, pos, noside);

         if (noside == EVAL_SKIP)
         goto nosideret;

         if (noside == EVAL_AVOID_SIDE_EFFECTS)
         return value_zero (builtin_type_int, not_lval);

         tem = longest_to_int (exp->elts[pc + 1].longconst);

         if (tem < 1 || tem > ada_array_arity (VALUE_TYPE (arg2)))
         error ("invalid dimension number to '%s", "range");

         arg3 = ada_array_bound (arg2, tem, 1);
         arg2 = ada_array_bound (arg2, tem, 0);

         return 
         value_from_longest (builtin_type_int,
         (value_less (arg1,arg3) 
         || value_equal (arg1,arg3))
         && (value_less (arg2,arg1)
         || value_equal (arg2,arg1)));
       */
      /* FIXME: TERNOP_MBR should be defined in expression.h */
      /*    case TERNOP_MBR:
         arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
         arg2 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
         arg3 = evaluate_subexp (NULL_TYPE, exp, pos, noside);

         if (noside == EVAL_SKIP)
         goto nosideret;

         return 
         value_from_longest (builtin_type_int,
         (value_less (arg1,arg3) 
         || value_equal (arg1,arg3))
         && (value_less (arg2,arg1)
         || value_equal (arg2,arg1)));
       */
      /* FIXME: OP_ATTRIBUTE should be defined in expression.h */
      /*    case OP_ATTRIBUTE:
         *pos += 3;
         atr = (enum ada_attribute) longest_to_int (exp->elts[pc + 2].longconst);
         switch (atr) 
         {
         default:
         error ("unexpected attribute encountered");

         case ATR_FIRST:
         case ATR_LAST:
         case ATR_LENGTH:
         {
         struct type* type_arg;
         if (exp->elts[*pos].opcode == OP_TYPE)
         {
         evaluate_subexp (NULL_TYPE, exp, pos, EVAL_SKIP);
         arg1 = NULL;
         type_arg = exp->elts[pc + 5].type;
         }
         else
         {
         arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
         type_arg = NULL;
         }

         if (exp->elts[*pos].opcode != OP_LONG) 
         error ("illegal operand to '%s", ada_attribute_name (atr));
         tem = longest_to_int (exp->elts[*pos+2].longconst);
         *pos += 4;

         if (noside == EVAL_SKIP)
         goto nosideret;

         if (type_arg == NULL)
         {
         arg1 = ada_coerce_ref (arg1);

         if (ada_is_packed_array_type (VALUE_TYPE (arg1)))
         arg1 = ada_coerce_to_simple_array (arg1);

         if (tem < 1 || tem > ada_array_arity (VALUE_TYPE (arg1)))
         error ("invalid dimension number to '%s", 
         ada_attribute_name (atr));

         if (noside == EVAL_AVOID_SIDE_EFFECTS)
         {
         type = ada_index_type (VALUE_TYPE (arg1), tem);
         if (type == NULL) 
         error ("attempt to take bound of something that is not an array");
         return allocate_value (type);
         }

         switch (atr) 
         {
         default: 
         error ("unexpected attribute encountered");
         case ATR_FIRST:
         return ada_array_bound (arg1, tem, 0);
         case ATR_LAST:
         return ada_array_bound (arg1, tem, 1);
         case ATR_LENGTH:
         return ada_array_length (arg1, tem);
         }
         }
         else if (TYPE_CODE (type_arg) == TYPE_CODE_RANGE
         || TYPE_CODE (type_arg) == TYPE_CODE_INT) 
         {
         struct type* range_type;
         char* name = ada_type_name (type_arg);
         if (name == NULL)
         {
         if (TYPE_CODE (type_arg) == TYPE_CODE_RANGE) 
         range_type = type_arg;
         else
         error ("unimplemented type attribute");
         }
         else 
         range_type = 
         to_fixed_range_type (name, NULL, TYPE_OBJFILE (type_arg));
         switch (atr) 
         {
         default: 
         error ("unexpected attribute encountered");
         case ATR_FIRST:
         return value_from_longest (TYPE_TARGET_TYPE (range_type),
         TYPE_LOW_BOUND (range_type));
         case ATR_LAST:
         return value_from_longest (TYPE_TARGET_TYPE (range_type),
         TYPE_HIGH_BOUND (range_type));
         }
         }              
         else if (TYPE_CODE (type_arg) == TYPE_CODE_ENUM)
         {
         switch (atr) 
         {
         default: 
         error ("unexpected attribute encountered");
         case ATR_FIRST:
         return value_from_longest 
         (type_arg, TYPE_FIELD_BITPOS (type_arg, 0));
         case ATR_LAST:
         return value_from_longest 
         (type_arg, 
         TYPE_FIELD_BITPOS (type_arg,
         TYPE_NFIELDS (type_arg) - 1));
         }
         }
         else if (TYPE_CODE (type_arg) == TYPE_CODE_FLT)
         error ("unimplemented type attribute");
         else 
         {
         LONGEST low, high;

         if (ada_is_packed_array_type (type_arg))
         type_arg = decode_packed_array_type (type_arg);

         if (tem < 1 || tem > ada_array_arity (type_arg))
         error ("invalid dimension number to '%s", 
         ada_attribute_name (atr));

         if (noside == EVAL_AVOID_SIDE_EFFECTS)
         {
         type = ada_index_type (type_arg, tem);
         if (type == NULL) 
         error ("attempt to take bound of something that is not an array");
         return allocate_value (type);
         }

         switch (atr) 
         {
         default: 
         error ("unexpected attribute encountered");
         case ATR_FIRST:
         low = ada_array_bound_from_type (type_arg, tem, 0, &type);
         return value_from_longest (type, low);
         case ATR_LAST:
         high = ada_array_bound_from_type (type_arg, tem, 1, &type);
         return value_from_longest (type, high);
         case ATR_LENGTH:
         low = ada_array_bound_from_type (type_arg, tem, 0, &type);
         high = ada_array_bound_from_type (type_arg, tem, 1, NULL);
         return value_from_longest (type, high-low+1);
         }
         }
         }

         case ATR_TAG:
         arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
         if (noside == EVAL_SKIP)
         goto nosideret;

         if (noside == EVAL_AVOID_SIDE_EFFECTS)
         return         
         value_zero (ada_tag_type (arg1), not_lval);

         return ada_value_tag (arg1);

         case ATR_MIN:
         case ATR_MAX:
         evaluate_subexp (NULL_TYPE, exp, pos, EVAL_SKIP);
         arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
         arg2 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
         if (noside == EVAL_SKIP)
         goto nosideret;
         else if (noside == EVAL_AVOID_SIDE_EFFECTS)
         return value_zero (VALUE_TYPE (arg1), not_lval);
         else
         return value_binop (arg1, arg2, 
         atr == ATR_MIN ? BINOP_MIN : BINOP_MAX);

         case ATR_MODULUS:
         {
         struct type* type_arg = exp->elts[pc + 5].type;
         evaluate_subexp (NULL_TYPE, exp, pos, EVAL_SKIP);
         *pos += 4;

         if (noside == EVAL_SKIP)
         goto nosideret;

         if (! ada_is_modular_type (type_arg))
         error ("'modulus must be applied to modular type");

         return value_from_longest (TYPE_TARGET_TYPE (type_arg),
         ada_modulus (type_arg));
         }


         case ATR_POS:
         evaluate_subexp (NULL_TYPE, exp, pos, EVAL_SKIP);
         arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
         if (noside == EVAL_SKIP)
         goto nosideret;
         else if (noside == EVAL_AVOID_SIDE_EFFECTS)
         return value_zero (builtin_type_ada_int, not_lval);
         else 
         return value_pos_atr (arg1);

         case ATR_SIZE:
         arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
         if (noside == EVAL_SKIP)
         goto nosideret;
         else if (noside == EVAL_AVOID_SIDE_EFFECTS)
         return value_zero (builtin_type_ada_int, not_lval);
         else
         return value_from_longest (builtin_type_ada_int,
         TARGET_CHAR_BIT 
         * TYPE_LENGTH (VALUE_TYPE (arg1)));

         case ATR_VAL:
         evaluate_subexp (NULL_TYPE, exp, pos, EVAL_SKIP);
         arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
         type = exp->elts[pc + 5].type;
         if (noside == EVAL_SKIP)
         goto nosideret;
         else if (noside == EVAL_AVOID_SIDE_EFFECTS)
         return value_zero (type, not_lval);
         else 
         return value_val_atr (type, arg1);
         } */
    case BINOP_EXP:
      arg1 = FUNC34 (NULL_TYPE, exp, pos, noside);
      arg2 = FUNC34 (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
	goto nosideret;
      if (FUNC27 (op, arg1, arg2))
	return FUNC42 (FUNC55 (arg1, arg2, op, OP_NULL,
					    EVAL_NORMAL));
      else if (noside == EVAL_AVOID_SIDE_EFFECTS)
	return FUNC57 (FUNC7 (arg1), not_lval);
      else
	return FUNC48 (arg1, arg2, op);

    case UNOP_PLUS:
      arg1 = FUNC34 (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
	goto nosideret;
      if (FUNC41 (op, arg1))
	return FUNC42 (FUNC56 (arg1, op, EVAL_NORMAL));
      else
	return arg1;

    case UNOP_ABS:
      arg1 = FUNC34 (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
	goto nosideret;
      if (FUNC51 (arg1, FUNC57 (FUNC7 (arg1), not_lval)))
	return FUNC52 (arg1);
      else
	return arg1;

    case UNOP_IND:
      if (expect_type && FUNC2 (expect_type) == TYPE_CODE_PTR)
	expect_type = FUNC3 (FUNC31 (expect_type));
      arg1 = FUNC34 (expect_type, exp, pos, noside);
      if (noside == EVAL_SKIP)
	goto nosideret;
      type = FUNC31 (FUNC7 (arg1));
      if (noside == EVAL_AVOID_SIDE_EFFECTS)
	{
	  if (FUNC13 (type))
	    /* GDB allows dereferencing GNAT array descriptors. */
	    {
	      struct type *arrType = FUNC19 (arg1, 0);
	      if (arrType == NULL)
		FUNC33 ("Attempt to dereference null array pointer.");
	      return FUNC47 (arrType, 0, NULL);
	    }
	  else if (FUNC2 (type) == TYPE_CODE_PTR
		   || FUNC2 (type) == TYPE_CODE_REF
		   /* In C you can dereference an array to get the 1st elt.  */
		   || FUNC2 (type) == TYPE_CODE_ARRAY)
	    return
	      FUNC57
	      (FUNC40
	       (FUNC8 (FUNC31 (FUNC3 (type)))),
	       lval_memory);
	  else if (FUNC2 (type) == TYPE_CODE_INT)
	    /* GDB allows dereferencing an int.  */
	    return FUNC57 (builtin_type_int, lval_memory);
	  else
	    FUNC33 ("Attempt to take contents of a non-pointer value.");
	}
      arg1 = FUNC11 (arg1);
      type = FUNC31 (FUNC7 (arg1));

      if (FUNC13 (type))
	/* GDB allows dereferencing GNAT array descriptors. */
	return FUNC12 (arg1);
      else
	return FUNC21 (arg1);

    case STRUCTOP_STRUCT:
      tem = FUNC37 (exp->elts[pc + 1].longconst);
      (*pos) += 3 + FUNC0 (tem + 1);
      arg1 = FUNC34 (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
	goto nosideret;
      if (noside == EVAL_AVOID_SIDE_EFFECTS)
	return FUNC57 (FUNC8
			   (FUNC16 (FUNC7 (arg1),
							&exp->elts[pc +
								   2].string,
							0, NULL)),
			   lval_memory);
      else
	return FUNC42 (FUNC23 (arg1,
						   &exp->elts[pc + 2].string,
						   "record"));
    case OP_TYPE:
      /* The value is not supposed to be used. This is here to make it
         easier to accommodate expressions that contain types. */
      (*pos) += 2;
      if (noside == EVAL_SKIP)
	goto nosideret;
      else if (noside == EVAL_AVOID_SIDE_EFFECTS)
	return FUNC26 (builtin_type_void);
      else
	FUNC33 ("Attempt to use a type name as an expression");

    case STRUCTOP_PTR:
      tem = FUNC37 (exp->elts[pc + 1].longconst);
      (*pos) += 3 + FUNC0 (tem + 1);
      arg1 = FUNC34 (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
	goto nosideret;
      if (noside == EVAL_AVOID_SIDE_EFFECTS)
	return FUNC57 (FUNC8
			   (FUNC16 (FUNC7 (arg1),
							&exp->elts[pc +
								   2].string,
							0, NULL)),
			   lval_memory);
      else
	return FUNC42 (FUNC23 (arg1,
						   &exp->elts[pc + 2].string,
						   "record access"));
    }

nosideret:
  return FUNC50 (builtin_type_long, (LONGEST) 1);
}