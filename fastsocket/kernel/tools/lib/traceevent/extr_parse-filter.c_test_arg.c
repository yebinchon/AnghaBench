
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {struct filter_arg* left; int type; struct filter_arg* right; } ;
struct TYPE_7__ {struct filter_arg* right; struct filter_arg* left; } ;
struct TYPE_6__ {struct filter_arg* right; struct filter_arg* left; } ;
struct TYPE_5__ {int value; } ;
struct filter_arg {int type; TYPE_4__ op; TYPE_3__ num; TYPE_2__ exp; TYPE_1__ boolean; } ;
typedef enum filter_vals { ____Placeholder_filter_vals } filter_vals ;
 int FILTER_OP_AND ;
 int FILTER_OP_NOT ;
 int FILTER_OP_OR ;



 int die (char*) ;
 int reparent_op_arg (struct filter_arg*,struct filter_arg*,struct filter_arg*) ;

enum filter_vals test_arg(struct filter_arg *parent, struct filter_arg *arg)
{
 enum filter_vals lval, rval;

 switch (arg->type) {


 case 137:
  return 130 + arg->boolean.value;


 case 132:
 case 131:
 case 135:
  return 129;

 case 136:
  lval = test_arg(arg, arg->exp.left);
  if (lval != 129)
   return lval;
  rval = test_arg(arg, arg->exp.right);
  if (rval != 129)
   return rval;
  return 129;

 case 134:
  lval = test_arg(arg, arg->num.left);
  if (lval != 129)
   return lval;
  rval = test_arg(arg, arg->num.right);
  if (rval != 129)
   return rval;
  return 129;

 case 133:
  if (arg->op.type != FILTER_OP_NOT) {
   lval = test_arg(arg, arg->op.left);
   switch (lval) {
   case 129:
    break;
   case 128:
    if (arg->op.type == FILTER_OP_OR)
     return 128;
    rval = test_arg(arg, arg->op.right);
    if (rval != 129)
     return rval;

    reparent_op_arg(parent, arg, arg->op.right);
    return 129;

   case 130:
    if (arg->op.type == FILTER_OP_AND)
     return 130;
    rval = test_arg(arg, arg->op.right);
    if (rval != 129)
     return rval;

    reparent_op_arg(parent, arg, arg->op.right);
    return 129;
   }
  }

  rval = test_arg(arg, arg->op.right);
  switch (rval) {
  case 129:
   break;
  case 128:
   if (arg->op.type == FILTER_OP_OR)
    return 128;
   if (arg->op.type == FILTER_OP_NOT)
    return 130;

   reparent_op_arg(parent, arg, arg->op.left);
   return 129;

  case 130:
   if (arg->op.type == FILTER_OP_AND)
    return 130;
   if (arg->op.type == FILTER_OP_NOT)
    return 128;

   reparent_op_arg(parent, arg, arg->op.left);
   return 129;
  }

  return 129;
 default:
  die("bad arg in filter tree");
 }
 return 129;
}
