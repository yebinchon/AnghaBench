
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_function_calls_alloca ;
 int current_function_calls_setjmp ;

void
clear_special_calls (void)
{
  current_function_calls_alloca = 0;
  current_function_calls_setjmp = 0;
}
