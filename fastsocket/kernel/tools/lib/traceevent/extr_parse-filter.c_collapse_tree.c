
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
struct filter_arg {TYPE_1__ boolean; int type; } ;
typedef enum filter_vals { ____Placeholder_filter_vals } filter_vals ;


 int FILTER_ARG_BOOLEAN ;



 struct filter_arg* allocate_arg () ;
 int free_arg (struct filter_arg*) ;
 int test_arg (struct filter_arg*,struct filter_arg*) ;

__attribute__((used)) static struct filter_arg *collapse_tree(struct filter_arg *arg)
{
 enum filter_vals ret;

 ret = test_arg(arg, arg);
 switch (ret) {
 case 129:
  return arg;

 case 128:
 case 130:
  free_arg(arg);
  arg = allocate_arg();
  arg->type = FILTER_ARG_BOOLEAN;
  arg->boolean.value = ret == 128;
 }

 return arg;
}
