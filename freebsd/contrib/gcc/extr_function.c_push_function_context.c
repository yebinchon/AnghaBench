
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_function_decl ;
 int push_function_context_to (int ) ;

void
push_function_context (void)
{
  push_function_context_to (current_function_decl);
}
