
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int prio; int op; TYPE_1__* left; } ;
struct print_arg {TYPE_2__ op; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ PRINT_NULL ;
 int get_op_prio (int ) ;

__attribute__((used)) static int set_op_prio(struct print_arg *arg)
{


 if (!arg->op.left || arg->op.left->type == PRINT_NULL)
  arg->op.prio = 0;
 else
  arg->op.prio = get_op_prio(arg->op.op);

 return arg->op.prio;
}
