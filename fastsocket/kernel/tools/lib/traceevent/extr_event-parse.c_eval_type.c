
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct print_arg {scalar_t__ type; TYPE_1__ typecast; } ;


 scalar_t__ PRINT_TYPE ;
 int do_warning (char*) ;
 unsigned long long eval_type_str (unsigned long long,int ,int) ;

__attribute__((used)) static unsigned long long
eval_type(unsigned long long val, struct print_arg *arg, int pointer)
{
 if (arg->type != PRINT_TYPE) {
  do_warning("expected type argument");
  return 0;
 }

 return eval_type_str(val, arg->typecast.type, pointer);
}
