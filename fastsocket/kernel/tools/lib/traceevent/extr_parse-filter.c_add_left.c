
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct filter_arg* left; } ;
struct TYPE_6__ {struct filter_arg* left; } ;
struct TYPE_5__ {struct filter_arg* left; } ;
struct filter_arg {int type; TYPE_1__ num; TYPE_3__ op; TYPE_2__ exp; } ;


 int const FILTER_ARG_BOOLEAN ;

 int const FILTER_ARG_FIELD ;


 struct filter_arg* rotate_op_right (struct filter_arg*,struct filter_arg*) ;

__attribute__((used)) static int add_left(struct filter_arg *op, struct filter_arg *arg)
{
 switch (op->type) {
 case 130:
  if (arg->type == 128)
   arg = rotate_op_right(arg, op);
  op->exp.left = arg;
  break;

 case 128:
  op->op.left = arg;
  break;
 case 129:
  if (arg->type == 128)
   arg = rotate_op_right(arg, op);


  if (arg->type != FILTER_ARG_FIELD &&
      arg->type != FILTER_ARG_BOOLEAN)
   return -1;
  op->num.left = arg;
  break;
 default:
  return -1;
 }
 return 0;
}
