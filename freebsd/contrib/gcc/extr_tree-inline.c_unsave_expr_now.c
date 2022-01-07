
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int id ;
struct TYPE_5__ {int transform_new_cfg; int transform_return_to_modify; int transform_lang_insert_block; int decl_map; int transform_call_graph_edges; int copy_decl; void* dst_fn; void* src_fn; } ;
typedef TYPE_1__ copy_body_data ;


 int CB_CGE_DUPLICATE ;
 int copy_decl_no_change ;
 void* current_function_decl ;
 int mark_local_for_remap_r ;
 int memset (TYPE_1__*,int ,int) ;
 int splay_tree_compare_pointers ;
 int splay_tree_delete (int ) ;
 int splay_tree_new (int ,int *,int *) ;
 int unsave_r ;
 int walk_tree (scalar_t__*,int ,TYPE_1__*,int *) ;
 int walk_tree_without_duplicates (scalar_t__*,int ,TYPE_1__*) ;

tree
unsave_expr_now (tree expr)
{
  copy_body_data id;


  if (expr == 0)
    return expr;


  memset (&id, 0, sizeof (id));
  id.src_fn = current_function_decl;
  id.dst_fn = current_function_decl;
  id.decl_map = splay_tree_new (splay_tree_compare_pointers, ((void*)0), ((void*)0));

  id.copy_decl = copy_decl_no_change;
  id.transform_call_graph_edges = CB_CGE_DUPLICATE;
  id.transform_new_cfg = 0;
  id.transform_return_to_modify = 0;
  id.transform_lang_insert_block = 0;


  walk_tree_without_duplicates (&expr, mark_local_for_remap_r, &id);


  walk_tree (&expr, unsave_r, &id, ((void*)0));


  splay_tree_delete (id.decl_map);

  return expr;
}
