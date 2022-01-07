
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VEC_pop (int ,int ) ;
 int cfun ;
 int cfun_stack ;
 int function_p ;

void
pop_cfun (void)
{
  cfun = VEC_pop (function_p, cfun_stack);
}
