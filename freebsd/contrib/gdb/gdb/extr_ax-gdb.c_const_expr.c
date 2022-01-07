
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union exp_element {int opcode; int symbol; int longconst; struct type* type; } ;
struct value {int dummy; } ;
struct type {int dummy; } ;
typedef enum exp_opcode { ____Placeholder_exp_opcode } exp_opcode ;
typedef int LONGEST ;





 struct value* const_var_ref (int ) ;
 struct value* value_from_longest (struct type*,int ) ;
 struct value* value_neg (struct value*) ;

__attribute__((used)) static struct value *
const_expr (union exp_element **pc)
{
  enum exp_opcode op = (*pc)->opcode;
  struct value *v1;

  switch (op)
    {
    case 130:
      {
 struct type *type = (*pc)[1].type;
 LONGEST k = (*pc)[2].longconst;
 (*pc) += 4;
 return value_from_longest (type, k);
      }

    case 129:
      {
 struct value *v = const_var_ref ((*pc)[2].symbol);
 (*pc) += 4;
 return v;
      }



    case 128:
      (*pc)++;
      v1 = const_expr (pc);
      if (v1)
 return value_neg (v1);
      else
 return 0;

    default:
      return 0;
    }
}
