
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_opt_pass {struct tree_opt_pass* next; scalar_t__ sub; } ;
struct cgraph_node {int * decl; scalar_t__ analyzed; struct cgraph_node* next; } ;


 int CDI_DOMINATORS ;
 int CDI_POST_DOMINATORS ;
 int DECL_STRUCT_FUNCTION (int *) ;
 struct cgraph_node* cgraph_nodes ;
 int * current_function_decl ;
 scalar_t__ execute_one_pass (struct tree_opt_pass*) ;
 int execute_pass_list (scalar_t__) ;
 int free_dominance_info (int ) ;
 int ggc_collect () ;
 int pop_cfun () ;
 int push_cfun (int ) ;

void
execute_ipa_pass_list (struct tree_opt_pass *pass)
{
  do
    {
      if (execute_one_pass (pass) && pass->sub)
 {
   struct cgraph_node *node;
   for (node = cgraph_nodes; node; node = node->next)
     if (node->analyzed)
       {
  push_cfun (DECL_STRUCT_FUNCTION (node->decl));
  current_function_decl = node->decl;
  execute_pass_list (pass->sub);
  free_dominance_info (CDI_DOMINATORS);
  free_dominance_info (CDI_POST_DOMINATORS);
  current_function_decl = ((void*)0);
  pop_cfun ();
  ggc_collect ();
       }
 }
      pass = pass->next;
    }
  while (pass);
}
