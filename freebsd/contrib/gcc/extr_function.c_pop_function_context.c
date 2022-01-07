
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_function_decl ;
 int pop_function_context_from (int ) ;

void
pop_function_context (void)
{
  pop_function_context_from (current_function_decl);
}
