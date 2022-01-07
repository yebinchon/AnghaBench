
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int tree ;
struct cgraph_node {int nested; } ;
struct TYPE_8__ {struct TYPE_8__* inner; } ;


 struct cgraph_node* cgraph_node (int ) ;
 int convert_all_function_calls (TYPE_1__*) ;
 int convert_local_reference ;
 int convert_nl_goto_receiver ;
 int convert_nl_goto_reference ;
 int convert_nonlocal_reference ;
 TYPE_1__* create_nesting_tree (struct cgraph_node*) ;
 int finalize_nesting_tree (TYPE_1__*) ;
 int free_nesting_tree (TYPE_1__*) ;
 TYPE_1__* root ;
 int unnest_nesting_tree (TYPE_1__*) ;
 int walk_all_functions (int ,TYPE_1__*) ;

void

lower_nested_functions (tree fndecl, bool skip_outermost_fndecl)
{
  struct cgraph_node *cgn;


  cgn = cgraph_node (fndecl);
  if (!cgn->nested)
    return;

  root = create_nesting_tree (cgn);




  if (skip_outermost_fndecl)
    root = root->inner;

  walk_all_functions (convert_nonlocal_reference, root);
  walk_all_functions (convert_local_reference, root);
  walk_all_functions (convert_nl_goto_reference, root);
  walk_all_functions (convert_nl_goto_receiver, root);
  convert_all_function_calls (root);
  finalize_nesting_tree (root);
  unnest_nesting_tree (root);
  free_nesting_tree (root);
  root = ((void*)0);
}
