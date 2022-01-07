
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct type {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
struct TYPE_2__ {int opcode; int symbol; struct type* type; } ;
typedef int LONGEST ;


 int EVAL_AVOID_SIDE_EFFECTS ;
 int NULL_TYPE ;

 struct type* SYMBOL_TYPE (int ) ;
 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_ARRAY ;
 int TYPE_CODE_PTR ;
 int TYPE_CODE_REF ;
 int TYPE_LENGTH (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;


 struct type* VALUE_TYPE (struct value*) ;
 int builtin_type_int ;
 struct type* check_typedef (struct type*) ;
 int error (char*) ;
 struct value* evaluate_subexp (int ,struct expression*,int*,int ) ;
 struct value* value_from_longest (int ,int ) ;

__attribute__((used)) static struct value *
evaluate_subexp_for_sizeof (struct expression *exp, int *pos)
{
  enum exp_opcode op;
  int pc;
  struct type *type;
  struct value *val;

  pc = (*pos);
  op = exp->elts[pc].opcode;

  switch (op)
    {




    case 129:
      (*pos)++;
      val = evaluate_subexp (NULL_TYPE, exp, pos, EVAL_AVOID_SIDE_EFFECTS);
      type = check_typedef (VALUE_TYPE (val));
      if (TYPE_CODE (type) != TYPE_CODE_PTR
   && TYPE_CODE (type) != TYPE_CODE_REF
   && TYPE_CODE (type) != TYPE_CODE_ARRAY)
 error ("Attempt to take contents of a non-pointer value.");
      type = check_typedef (TYPE_TARGET_TYPE (type));
      return value_from_longest (builtin_type_int, (LONGEST)
     TYPE_LENGTH (type));

    case 128:
      (*pos) += 3;
      type = check_typedef (exp->elts[pc + 1].type);
      return value_from_longest (builtin_type_int,
     (LONGEST) TYPE_LENGTH (type));

    case 130:
      (*pos) += 4;
      type = check_typedef (SYMBOL_TYPE (exp->elts[pc + 2].symbol));
      return
 value_from_longest (builtin_type_int, (LONGEST) TYPE_LENGTH (type));

    default:
      val = evaluate_subexp (NULL_TYPE, exp, pos, EVAL_AVOID_SIDE_EFFECTS);
      return value_from_longest (builtin_type_int,
     (LONGEST) TYPE_LENGTH (VALUE_TYPE (val)));
    }
}
