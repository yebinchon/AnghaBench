
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NULL_TREE ;
 int current_function_decl ;
 int current_scope ;
 int file_scope ;
 int save_current_function_decl ;
 int save_current_scope ;

void
push_to_top_level (void)
{
  save_current_scope = current_scope;
  save_current_function_decl = current_function_decl;
  current_scope = file_scope;
  current_function_decl = NULL_TREE;
}
