
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct type {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
typedef enum noside { ____Placeholder_noside } noside ;
typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
typedef enum ada_attribute { ____Placeholder_ada_attribute } ada_attribute ;
struct TYPE_2__ {int opcode; int string; int longconst; int symbol; struct type* type; } ;
typedef int LONGEST ;






 int BINOP_MOD ;

 int BINOP_REM ;

 int BYTES_TO_EXP_ELEM (int) ;
 int EVAL_AVOID_SIDE_EFFECTS ;
 int EVAL_NORMAL ;
 int EVAL_SKIP ;
 struct type* NULL_TYPE ;


 int OP_NULL ;




 int SYMBOL_TYPE (int ) ;

 int const TYPE_CODE (struct type*) ;


 int const TYPE_CODE_INT ;

 int const TYPE_CODE_REF ;

 struct type* TYPE_TARGET_TYPE (struct type*) ;





 scalar_t__ VALUE_ADDRESS (struct value*) ;
 int VALUE_LVAL (struct value*) ;
 scalar_t__ VALUE_OFFSET (struct value*) ;
 struct type* VALUE_TYPE (struct value*) ;
 struct type* ada_aligned_type (struct type*) ;
 int ada_array_arity (struct type*) ;
 struct type* ada_array_element_type (struct type*,int) ;
 struct value* ada_coerce_ref (struct value*) ;
 struct value* ada_coerce_to_simple_array (struct value*) ;
 int ada_is_array_descriptor (struct type*) ;
 int ada_is_fixed_point_type (struct type*) ;
 int ada_is_packed_array_type (struct type*) ;
 struct type* ada_lookup_struct_elt_type (struct type*,int *,int ,int *) ;
 struct value* ada_to_fixed_value (struct type*,int ,scalar_t__,struct value*) ;
 int ada_type_name (struct type*) ;
 struct type* ada_type_of_array (struct value*,int ) ;
 struct value* ada_value_assign (struct value*,struct value*) ;
 struct value* ada_value_ind (struct value*) ;
 struct value* ada_value_ptr_subscript (struct value*,struct type*,int,struct value**) ;
 struct value* ada_value_struct_elt (struct value*,int *,char*) ;
 struct value* ada_value_subscript (struct value*,int,struct value**) ;
 scalar_t__ alloca (int) ;
 struct value* allocate_value (struct type*) ;
 int binop_user_defined_p (int,struct value*,struct value*) ;
 struct type* builtin_type_int ;
 int builtin_type_long ;
 struct type* builtin_type_void ;
 struct value* call_function_by_hand (struct value*,int,struct value**) ;
 struct value* cast_from_fixed_to_double (struct value*) ;
 struct value* cast_to_fixed (struct type*,struct value*) ;
 struct type* check_typedef (struct type*) ;
 struct value* coerce_for_assign (struct type*,struct value*) ;
 int error (char*,...) ;
 struct value* evaluate_subexp (struct type*,struct expression*,int*,int) ;
 struct value* evaluate_subexp_standard (struct type*,struct expression*,int*,int) ;
 struct value* evaluate_subexp_with_coercion (struct expression*,int*,int) ;
 int longest_to_int (int ) ;
 int lval_memory ;
 int not_lval ;
 struct type* static_unwrap_type (int ) ;
 struct type* to_fixed_array_type (struct type*,int *,int) ;
 struct type* to_static_fixed_type (struct type*) ;
 int unop_user_defined_p (int,struct value*) ;
 struct value* unwrap_value (struct value*) ;
 struct value* value_add (struct value*,struct value*) ;
 struct value* value_addr (struct value*) ;
 struct value* value_array (int,int,struct value**) ;
 int value_as_long (struct value*) ;
 struct value* value_at_lazy (struct type*,int ,int *) ;
 struct value* value_binop (struct value*,struct value*,int) ;
 struct value* value_cast (struct type*,struct value*) ;
 struct value* value_from_longest (int ,int ) ;
 int value_less (struct value*,struct value*) ;
 struct value* value_neg (struct value*) ;
 struct value* value_slice (struct value*,int,int) ;
 struct value* value_sub (struct value*,struct value*) ;
 struct value* value_x_binop (struct value*,struct value*,int,int ,int ) ;
 struct value* value_x_unop (struct value*,int,int ) ;
 struct value* value_zero (struct type*,int ) ;

struct value *
ada_evaluate_subexp (struct type *expect_type, struct expression *exp,
       int *pos, enum noside noside)
{
  enum exp_opcode op;
  enum ada_attribute atr;
  int tem, tem2, tem3;
  int pc;
  struct value *arg1 = ((void*)0), *arg2 = ((void*)0), *arg3;
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
 unwrap_value (evaluate_subexp_standard
        (expect_type, exp, pos, noside));

    case 131:
      (*pos) += 2;
      type = exp->elts[pc + 1].type;
      arg1 = evaluate_subexp (type, exp, pos, noside);
      if (noside == EVAL_SKIP)
 goto nosideret;
      if (type != check_typedef (VALUE_TYPE (arg1)))
 {
   if (ada_is_fixed_point_type (type))
     arg1 = cast_to_fixed (type, arg1);
   else if (ada_is_fixed_point_type (VALUE_TYPE (arg1)))
     arg1 = value_cast (type, cast_from_fixed_to_double (arg1));
   else if (VALUE_LVAL (arg1) == lval_memory)
     {





       if (noside == EVAL_AVOID_SIDE_EFFECTS)
  return value_zero (to_static_fixed_type (type), not_lval);
       arg1 =
  ada_to_fixed_value
  (type, 0, VALUE_ADDRESS (arg1) + VALUE_OFFSET (arg1), 0);
     }
   else
     arg1 = value_cast (type, arg1);
 }
      return arg1;







    case 148:
      arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
      arg2 = evaluate_subexp (VALUE_TYPE (arg1), exp, pos, noside);
      if (noside == EVAL_SKIP || noside == EVAL_AVOID_SIDE_EFFECTS)
 return arg1;
      if (binop_user_defined_p (op, arg1, arg2))
 return value_x_binop (arg1, arg2, op, OP_NULL, EVAL_NORMAL);
      else
 {
   if (ada_is_fixed_point_type (VALUE_TYPE (arg1)))
     arg2 = cast_to_fixed (VALUE_TYPE (arg1), arg2);
   else if (ada_is_fixed_point_type (VALUE_TYPE (arg2)))
     error
       ("Fixed-point values must be assigned to fixed-point variables");
   else
     arg2 = coerce_for_assign (VALUE_TYPE (arg1), arg2);
   return ada_value_assign (arg1, arg2);
 }

    case 149:
      arg1 = evaluate_subexp_with_coercion (exp, pos, noside);
      arg2 = evaluate_subexp_with_coercion (exp, pos, noside);
      if (noside == EVAL_SKIP)
 goto nosideret;
      if (binop_user_defined_p (op, arg1, arg2))
 return value_x_binop (arg1, arg2, op, OP_NULL, EVAL_NORMAL);
      else
 {
   if ((ada_is_fixed_point_type (VALUE_TYPE (arg1))
        || ada_is_fixed_point_type (VALUE_TYPE (arg2)))
       && VALUE_TYPE (arg1) != VALUE_TYPE (arg2))
     error
       ("Operands of fixed-point addition must have the same type");
   return value_cast (VALUE_TYPE (arg1), value_add (arg1, arg2));
 }

    case 144:
      arg1 = evaluate_subexp_with_coercion (exp, pos, noside);
      arg2 = evaluate_subexp_with_coercion (exp, pos, noside);
      if (noside == EVAL_SKIP)
 goto nosideret;
      if (binop_user_defined_p (op, arg1, arg2))
 return value_x_binop (arg1, arg2, op, OP_NULL, EVAL_NORMAL);
      else
 {
   if ((ada_is_fixed_point_type (VALUE_TYPE (arg1))
        || ada_is_fixed_point_type (VALUE_TYPE (arg2)))
       && VALUE_TYPE (arg1) != VALUE_TYPE (arg2))
     error
       ("Operands of fixed-point subtraction must have the same type");
   return value_cast (VALUE_TYPE (arg1), value_sub (arg1, arg2));
 }

    case 145:
    case 147:
      arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
      arg2 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
 goto nosideret;
      if (binop_user_defined_p (op, arg1, arg2))
 return value_x_binop (arg1, arg2, op, OP_NULL, EVAL_NORMAL);
      else
 if (noside == EVAL_AVOID_SIDE_EFFECTS
     && (op == 147 || op == BINOP_REM || op == BINOP_MOD))
 return value_zero (VALUE_TYPE (arg1), not_lval);
      else
 {
   if (ada_is_fixed_point_type (VALUE_TYPE (arg1)))
     arg1 = cast_from_fixed_to_double (arg1);
   if (ada_is_fixed_point_type (VALUE_TYPE (arg2)))
     arg2 = cast_from_fixed_to_double (arg2);
   return value_binop (arg1, arg2, op);
 }

    case 129:
      arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
 goto nosideret;
      if (unop_user_defined_p (op, arg1))
 return value_x_unop (arg1, op, EVAL_NORMAL);
      else if (ada_is_fixed_point_type (VALUE_TYPE (arg1)))
 return value_cast (VALUE_TYPE (arg1), value_neg (arg1));
      else
 return value_neg (arg1);
    case 140:
      *pos -= 1;
      if (noside == EVAL_SKIP)
 {
   *pos += 4;
   goto nosideret;
 }
      else if (noside == EVAL_AVOID_SIDE_EFFECTS)
 {
   *pos += 4;
   return value_zero
     (to_static_fixed_type
      (static_unwrap_type (SYMBOL_TYPE (exp->elts[pc + 2].symbol))),
      not_lval);
 }
      else
 {
   arg1 =
     unwrap_value (evaluate_subexp_standard
     (expect_type, exp, pos, noside));
   return ada_to_fixed_value (VALUE_TYPE (arg1), 0,
         VALUE_ADDRESS (arg1) +
         VALUE_OFFSET (arg1), arg1);
 }

    case 143:
      (*pos) += 3;
      tem2 = longest_to_int (exp->elts[pc + 1].longconst);
      tem3 = longest_to_int (exp->elts[pc + 2].longconst);
      nargs = tem3 - tem2 + 1;
      type = expect_type ? check_typedef (expect_type) : NULL_TYPE;

      argvec =
 (struct value * *) alloca (sizeof (struct value *) * (nargs + 1));
      for (tem = 0; tem == 0 || tem < nargs; tem += 1)

 {

   argvec[tem] = evaluate_subexp_with_coercion (exp, pos, noside);
 }
      if (noside == EVAL_SKIP)
 goto nosideret;
      return value_array (tem2, tem3, argvec);

    case 142:
      (*pos) += 2;



      nargs = longest_to_int (exp->elts[pc + 1].longconst);
      argvec =
 (struct value * *) alloca (sizeof (struct value *) * (nargs + 2));







      if (0)
 {
   error ("unexpected code path, FIXME");
 }
      else
 {
   for (tem = 0; tem <= nargs; tem += 1)
     argvec[tem] = evaluate_subexp (NULL_TYPE, exp, pos, noside);
   argvec[tem] = 0;

   if (noside == EVAL_SKIP)
     goto nosideret;
 }

      if (TYPE_CODE (VALUE_TYPE (argvec[0])) == TYPE_CODE_REF)
 argvec[0] = value_addr (argvec[0]);

      if (ada_is_packed_array_type (VALUE_TYPE (argvec[0])))
 argvec[0] = ada_coerce_to_simple_array (argvec[0]);

      type = check_typedef (VALUE_TYPE (argvec[0]));
      if (TYPE_CODE (type) == 134)
 {
   switch (TYPE_CODE (check_typedef (TYPE_TARGET_TYPE (type))))
     {
     case 135:
       type = check_typedef (TYPE_TARGET_TYPE (type));
       break;
     case 136:
       break;
     case 133:
       if (noside != EVAL_AVOID_SIDE_EFFECTS)
  argvec[0] = ada_value_ind (argvec[0]);
       type = check_typedef (TYPE_TARGET_TYPE (type));
       break;
     default:
       error ("cannot subscript or call something of type `%s'",
       ada_type_name (VALUE_TYPE (argvec[0])));
       break;
     }
 }

      switch (TYPE_CODE (type))
 {
 case 135:
   if (noside == EVAL_AVOID_SIDE_EFFECTS)
     return allocate_value (TYPE_TARGET_TYPE (type));
   return call_function_by_hand (argvec[0], nargs, argvec + 1);
 case 133:
   {
     int arity = ada_array_arity (type);
     type = ada_array_element_type (type, nargs);
     if (type == ((void*)0))
       error ("cannot subscript or call a record");
     if (arity != nargs)
       error ("wrong number of subscripts; expecting %d", arity);
     if (noside == EVAL_AVOID_SIDE_EFFECTS)
       return allocate_value (ada_aligned_type (type));
     return
       unwrap_value (ada_value_subscript
       (argvec[0], nargs, argvec + 1));
   }
 case 136:
   if (noside == EVAL_AVOID_SIDE_EFFECTS)
     {
       type = ada_array_element_type (type, nargs);
       if (type == ((void*)0))
  error ("element type of array unknown");
       else
  return allocate_value (ada_aligned_type (type));
     }
   return
     unwrap_value (ada_value_subscript
     (ada_coerce_to_simple_array (argvec[0]),
      nargs, argvec + 1));
 case 134:
   type = to_fixed_array_type (TYPE_TARGET_TYPE (type), ((void*)0), 1);
   if (noside == EVAL_AVOID_SIDE_EFFECTS)
     {
       type = ada_array_element_type (type, nargs);
       if (type == ((void*)0))
  error ("element type of array unknown");
       else
  return allocate_value (ada_aligned_type (type));
     }
   return
     unwrap_value (ada_value_ptr_subscript (argvec[0], type,
         nargs, argvec + 1));

 default:
   error ("Internal error in evaluate_subexp");
 }

    case 137:
      {
 struct value *array = evaluate_subexp (NULL_TYPE, exp, pos, noside);
 int lowbound
   = value_as_long (evaluate_subexp (NULL_TYPE, exp, pos, noside));
 int upper
   = value_as_long (evaluate_subexp (NULL_TYPE, exp, pos, noside));
 if (noside == EVAL_SKIP)
   goto nosideret;


 if (TYPE_CODE (VALUE_TYPE (array)) == TYPE_CODE_REF
     && TYPE_TARGET_TYPE (VALUE_TYPE (array)) != ((void*)0)
     && TYPE_CODE (TYPE_TARGET_TYPE (VALUE_TYPE (array))) ==
     136
     && !ada_is_array_descriptor (check_typedef (VALUE_TYPE (array))))
   {
     array = ada_coerce_ref (array);
   }

 if (noside == EVAL_AVOID_SIDE_EFFECTS &&
     ada_is_array_descriptor (check_typedef (VALUE_TYPE (array))))
   {

     struct type *arrType = ada_type_of_array (array, 0);
     if (arrType != ((void*)0))
       array = value_at_lazy (arrType, 0, ((void*)0));
   }
 if (ada_is_array_descriptor (VALUE_TYPE (array)))
   array = ada_coerce_to_simple_array (array);




 if (TYPE_CODE (VALUE_TYPE (array)) == 134
     && TYPE_TARGET_TYPE (VALUE_TYPE (array)) != ((void*)0)
     && TYPE_CODE (TYPE_TARGET_TYPE (VALUE_TYPE (array))) ==
     136)
   {
     array = ada_value_ind (array);
   }

 if (noside == EVAL_AVOID_SIDE_EFFECTS)


   return array;
 else
   return value_slice (array, lowbound, upper - lowbound + 1);
      }
    case 146:
      arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
      arg2 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
 goto nosideret;
      if (binop_user_defined_p (op, arg1, arg2))
 return unwrap_value (value_x_binop (arg1, arg2, op, OP_NULL,
         EVAL_NORMAL));
      else if (noside == EVAL_AVOID_SIDE_EFFECTS)
 return value_zero (VALUE_TYPE (arg1), not_lval);
      else
 return value_binop (arg1, arg2, op);

    case 128:
      arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
 goto nosideret;
      if (unop_user_defined_p (op, arg1))
 return unwrap_value (value_x_unop (arg1, op, EVAL_NORMAL));
      else
 return arg1;

    case 132:
      arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
 goto nosideret;
      if (value_less (arg1, value_zero (VALUE_TYPE (arg1), not_lval)))
 return value_neg (arg1);
      else
 return arg1;

    case 130:
      if (expect_type && TYPE_CODE (expect_type) == 134)
 expect_type = TYPE_TARGET_TYPE (check_typedef (expect_type));
      arg1 = evaluate_subexp (expect_type, exp, pos, noside);
      if (noside == EVAL_SKIP)
 goto nosideret;
      type = check_typedef (VALUE_TYPE (arg1));
      if (noside == EVAL_AVOID_SIDE_EFFECTS)
 {
   if (ada_is_array_descriptor (type))

     {
       struct type *arrType = ada_type_of_array (arg1, 0);
       if (arrType == ((void*)0))
  error ("Attempt to dereference null array pointer.");
       return value_at_lazy (arrType, 0, ((void*)0));
     }
   else if (TYPE_CODE (type) == 134
     || TYPE_CODE (type) == TYPE_CODE_REF

     || TYPE_CODE (type) == 136)
     return
       value_zero
       (to_static_fixed_type
        (ada_aligned_type (check_typedef (TYPE_TARGET_TYPE (type)))),
        lval_memory);
   else if (TYPE_CODE (type) == TYPE_CODE_INT)

     return value_zero (builtin_type_int, lval_memory);
   else
     error ("Attempt to take contents of a non-pointer value.");
 }
      arg1 = ada_coerce_ref (arg1);
      type = check_typedef (VALUE_TYPE (arg1));

      if (ada_is_array_descriptor (type))

 return ada_coerce_to_simple_array (arg1);
      else
 return ada_value_ind (arg1);

    case 138:
      tem = longest_to_int (exp->elts[pc + 1].longconst);
      (*pos) += 3 + BYTES_TO_EXP_ELEM (tem + 1);
      arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
 goto nosideret;
      if (noside == EVAL_AVOID_SIDE_EFFECTS)
 return value_zero (ada_aligned_type
      (ada_lookup_struct_elt_type (VALUE_TYPE (arg1),
       &exp->elts[pc +
           2].string,
       0, ((void*)0))),
      lval_memory);
      else
 return unwrap_value (ada_value_struct_elt (arg1,
         &exp->elts[pc + 2].string,
         "record"));
    case 141:


      (*pos) += 2;
      if (noside == EVAL_SKIP)
 goto nosideret;
      else if (noside == EVAL_AVOID_SIDE_EFFECTS)
 return allocate_value (builtin_type_void);
      else
 error ("Attempt to use a type name as an expression");

    case 139:
      tem = longest_to_int (exp->elts[pc + 1].longconst);
      (*pos) += 3 + BYTES_TO_EXP_ELEM (tem + 1);
      arg1 = evaluate_subexp (NULL_TYPE, exp, pos, noside);
      if (noside == EVAL_SKIP)
 goto nosideret;
      if (noside == EVAL_AVOID_SIDE_EFFECTS)
 return value_zero (ada_aligned_type
      (ada_lookup_struct_elt_type (VALUE_TYPE (arg1),
       &exp->elts[pc +
           2].string,
       0, ((void*)0))),
      lval_memory);
      else
 return unwrap_value (ada_value_struct_elt (arg1,
         &exp->elts[pc + 2].string,
         "record access"));
    }

nosideret:
  return value_from_longest (builtin_type_long, (LONGEST) 1);
}
