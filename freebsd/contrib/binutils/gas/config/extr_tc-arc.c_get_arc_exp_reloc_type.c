
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ X_op; scalar_t__ X_add_number; TYPE_3__* X_add_symbol; TYPE_2__* X_op_symbol; } ;
typedef TYPE_4__ expressionS ;
struct TYPE_9__ {TYPE_4__ sy_value; } ;
struct TYPE_7__ {scalar_t__ X_op; int X_add_number; } ;
struct TYPE_8__ {TYPE_1__ sy_value; } ;


 int BFD_RELOC_ARC_B26 ;
 scalar_t__ O_constant ;
 scalar_t__ O_right_shift ;
 scalar_t__ O_subtract ;
 scalar_t__ O_symbol ;
 int* arc_operand_map ;

__attribute__((used)) static int
get_arc_exp_reloc_type (int data_p,
   int default_type,
   expressionS *exp,
   expressionS *expnew)
{





  if (exp->X_op == O_right_shift
      && exp->X_op_symbol != ((void*)0)
      && exp->X_op_symbol->sy_value.X_op == O_constant
      && exp->X_op_symbol->sy_value.X_add_number == 2
      && exp->X_add_number == 0)
    {
      if (exp->X_add_symbol != ((void*)0)
   && (exp->X_add_symbol->sy_value.X_op == O_constant
       || exp->X_add_symbol->sy_value.X_op == O_symbol))
 {
   *expnew = *exp;
   expnew->X_op = O_symbol;
   expnew->X_op_symbol = ((void*)0);
   return data_p ? BFD_RELOC_ARC_B26 : arc_operand_map['J'];
 }
      else if (exp->X_add_symbol != ((void*)0)
        && exp->X_add_symbol->sy_value.X_op == O_subtract)
 {
   *expnew = exp->X_add_symbol->sy_value;
   return data_p ? BFD_RELOC_ARC_B26 : arc_operand_map['J'];
 }
    }

  *expnew = *exp;
  return default_type;
}
