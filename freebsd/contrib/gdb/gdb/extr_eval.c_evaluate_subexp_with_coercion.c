
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct symbol {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
typedef enum noside { ____Placeholder_noside } noside ;
typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
struct TYPE_2__ {int opcode; int block; struct symbol* symbol; } ;


 int CAST_IS_CONVERSION ;
 int NULL_TYPE ;

 int SYMBOL_TYPE (struct symbol*) ;
 int TYPE_CODE (int ) ;
 int TYPE_CODE_ARRAY ;
 int TYPE_TARGET_TYPE (int ) ;
 int block_innermost_frame (int ) ;
 int check_typedef (int ) ;
 struct value* evaluate_subexp (int ,struct expression*,int*,int) ;
 struct value* locate_var_value (struct symbol*,int ) ;
 int lookup_pointer_type (int ) ;
 struct value* value_cast (int ,struct value*) ;

struct value *
evaluate_subexp_with_coercion (struct expression *exp,
          int *pos, enum noside noside)
{
  enum exp_opcode op;
  int pc;
  struct value *val;
  struct symbol *var;

  pc = (*pos);
  op = exp->elts[pc].opcode;

  switch (op)
    {
    case 128:
      var = exp->elts[pc + 2].symbol;
      if (TYPE_CODE (check_typedef (SYMBOL_TYPE (var))) == TYPE_CODE_ARRAY
   && CAST_IS_CONVERSION)
 {
   (*pos) += 4;
   val =
     locate_var_value
     (var, block_innermost_frame (exp->elts[pc + 1].block));
   return value_cast (lookup_pointer_type (TYPE_TARGET_TYPE (check_typedef (SYMBOL_TYPE (var)))),
        val);
 }


    default:
      return evaluate_subexp (NULL_TYPE, exp, pos, noside);
    }
}
