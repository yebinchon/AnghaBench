
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_function_decl ;
 int current_scope ;
 int save_current_function_decl ;
 int save_current_scope ;

void
pop_from_top_level (void)
{
  current_scope = save_current_scope;
  current_function_decl = save_current_function_decl;
}
