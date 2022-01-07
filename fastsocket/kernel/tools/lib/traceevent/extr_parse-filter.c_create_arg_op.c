
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct filter_arg {TYPE_1__ op; int type; } ;
typedef enum filter_op_type { ____Placeholder_filter_op_type } filter_op_type ;


 int FILTER_ARG_OP ;
 struct filter_arg* allocate_arg () ;

__attribute__((used)) static struct filter_arg *
create_arg_op(enum filter_op_type btype)
{
 struct filter_arg *arg;

 arg = allocate_arg();
 arg->type = FILTER_ARG_OP;
 arg->op.type = btype;

 return arg;
}
