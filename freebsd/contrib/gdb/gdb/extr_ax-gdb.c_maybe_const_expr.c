
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union exp_element {int dummy; } exp_element ;
struct value {int dummy; } ;


 struct value* const_expr (union exp_element**) ;

__attribute__((used)) static struct value *
maybe_const_expr (union exp_element **pc)
{
  union exp_element *tentative_pc = *pc;
  struct value *v = const_expr (&tentative_pc);


  if (v)
    *pc = tentative_pc;

  return v;
}
