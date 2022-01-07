
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ECF_MAY_BE_ALLOCA ;
 int ECF_RETURNS_TWICE ;
 int call_expr_flags (int ) ;
 int current_function_calls_alloca ;
 int current_function_calls_setjmp ;

void
notice_special_calls (tree t)
{
  int flags = call_expr_flags (t);

  if (flags & ECF_MAY_BE_ALLOCA)
    current_function_calls_alloca = 1;
  if (flags & ECF_RETURNS_TWICE)
    current_function_calls_setjmp = 1;
}
