
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct function {int dummy; } ;


 int VEC_safe_push (int ,int ,int ,struct function*) ;
 struct function* cfun ;
 int cfun_stack ;
 int function_p ;
 int heap ;

void
push_cfun (struct function *new_cfun)
{
  VEC_safe_push (function_p, heap, cfun_stack, cfun);
  cfun = new_cfun;
}
