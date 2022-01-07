
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct filter_arg {TYPE_1__ op; int type; } ;
typedef enum filter_exp_type { ____Placeholder_filter_exp_type } filter_exp_type ;


 int FILTER_ARG_NUM ;
 struct filter_arg* allocate_arg () ;

__attribute__((used)) static struct filter_arg *
create_arg_cmp(enum filter_exp_type etype)
{
 struct filter_arg *arg;

 arg = allocate_arg();

 arg->type = FILTER_ARG_NUM;
 arg->op.type = etype;

 return arg;
}
