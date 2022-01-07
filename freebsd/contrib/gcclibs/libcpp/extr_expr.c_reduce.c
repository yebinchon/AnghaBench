
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_1__ ;


struct TYPE_39__ {int low; int unsignedp; int overflow; int high; } ;
struct op {size_t op; TYPE_5__ value; } ;
typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_36__ {int skip_eval; } ;
struct TYPE_37__ {TYPE_1__ state; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_38__ {int prio; int flags; } ;


 int CHECK_PROMOTION ;


 int CPP_CLOSE_PAREN ;




 int CPP_DL_ERROR ;
 int CPP_DL_ICE ;
 int CPP_DL_PEDWARN ;
 size_t CPP_EQ ;



 size_t CPP_LAST_CPP_OP ;
 scalar_t__ CPP_OPTION (TYPE_2__*,int ) ;
 int LEFT_ASSOC ;
 int check_promotion (TYPE_2__*,struct op*) ;
 int cpp_error (TYPE_2__*,int ,char*,...) ;
 TYPE_5__ num_binary_op (TYPE_2__*,TYPE_5__,TYPE_5__,int) ;
 TYPE_5__ num_bitwise_op (TYPE_2__*,TYPE_5__,TYPE_5__,int) ;
 TYPE_5__ num_div_op (TYPE_2__*,TYPE_5__,TYPE_5__,int) ;
 TYPE_5__ num_equality_op (TYPE_2__*,TYPE_5__,TYPE_5__,int) ;
 TYPE_5__ num_inequality_op (TYPE_2__*,TYPE_5__,TYPE_5__,int) ;
 TYPE_5__ num_mul (TYPE_2__*,TYPE_5__,TYPE_5__) ;
 TYPE_5__ num_unary_op (TYPE_2__*,TYPE_5__,int) ;
 int num_zerop (TYPE_5__) ;
 TYPE_4__* optab ;
 int warn_num_sign_change ;

__attribute__((used)) static struct op *
reduce (cpp_reader *pfile, struct op *top, enum cpp_ttype op)
{
  unsigned int prio;

  if (top->op <= CPP_EQ || top->op > CPP_LAST_CPP_OP + 2)
    {
    bad_op:
      cpp_error (pfile, CPP_DL_ICE, "impossible operator '%u'", top->op);
      return 0;
    }

  if (op == 136)
    return top;



  prio = optab[op].prio - ((optab[op].flags & LEFT_ASSOC) != 0);
  while (prio < optab[top->op].prio)
    {
      if (CPP_OPTION (pfile, warn_num_sign_change)
   && optab[top->op].flags & CHECK_PROMOTION)
 check_promotion (pfile, top);

      switch (top->op)
 {
 case 129:
 case 130:
 case 138:
 case 149:
   top[-1].value = num_unary_op (pfile, top->value, top->op);
   break;

 case 133:
 case 141:
 case 131:
 case 142:
 case 150:
   top[-1].value = num_binary_op (pfile, top[-1].value,
      top->value, top->op);
   break;

 case 146:
 case 144:
 case 145:
 case 143:
   top[-1].value
     = num_inequality_op (pfile, top[-1].value, top->value, top->op);
   break;

 case 147:
 case 137:
   top[-1].value
     = num_equality_op (pfile, top[-1].value, top->value, top->op);
   break;

 case 153:
 case 135:
 case 128:
   top[-1].value
     = num_bitwise_op (pfile, top[-1].value, top->value, top->op);
   break;

 case 139:
   top[-1].value = num_mul (pfile, top[-1].value, top->value);
   break;

 case 148:
 case 140:
   top[-1].value = num_div_op (pfile, top[-1].value,
          top->value, top->op);
   break;

 case 134:
   top--;
   if (!num_zerop (top->value))
     pfile->state.skip_eval--;
   top->value.low = (!num_zerop (top->value)
       || !num_zerop (top[1].value));
   top->value.high = 0;
   top->value.unsignedp = 0;
   top->value.overflow = 0;
   continue;

 case 152:
   top--;
   if (num_zerop (top->value))
     pfile->state.skip_eval--;
   top->value.low = (!num_zerop (top->value)
       && !num_zerop (top[1].value));
   top->value.high = 0;
   top->value.unsignedp = 0;
   top->value.overflow = 0;
   continue;

 case 136:
   if (op != CPP_CLOSE_PAREN)
     {
       cpp_error (pfile, CPP_DL_ERROR, "missing ')' in expression");
       return 0;
     }
   top--;
   top->value = top[1].value;
   return top;

 case 151:
   top -= 2;
   if (!num_zerop (top->value))
     {
       pfile->state.skip_eval--;
       top->value = top[1].value;
     }
   else
     top->value = top[2].value;
   top->value.unsignedp = (top[1].value.unsignedp
      || top[2].value.unsignedp);
   continue;

 case 132:
   cpp_error (pfile, CPP_DL_ERROR, "'?' without following ':'");
   return 0;

 default:
   goto bad_op;
 }

      top--;
      if (top->value.overflow && !pfile->state.skip_eval)
 cpp_error (pfile, CPP_DL_PEDWARN,
     "integer overflow in preprocessor expression");
    }

  if (op == CPP_CLOSE_PAREN)
    {
      cpp_error (pfile, CPP_DL_ERROR, "missing '(' in expression");
      return 0;
    }

  return top;
}
