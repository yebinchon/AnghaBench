
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct copy_body_data {int decl_map; int src_cfun; void* dst_fn; void* src_fn; } ;
typedef int id ;


 int cfun ;
 void* current_function_decl ;
 int memset (struct copy_body_data*,int ,int) ;
 int remap_type_1 (int ,struct copy_body_data*) ;
 int splay_tree_compare_pointers ;
 int splay_tree_delete (int ) ;
 int splay_tree_new (int ,int *,int *) ;

tree
build_duplicate_type (tree type)
{
  struct copy_body_data id;

  memset (&id, 0, sizeof (id));
  id.src_fn = current_function_decl;
  id.dst_fn = current_function_decl;
  id.src_cfun = cfun;
  id.decl_map = splay_tree_new (splay_tree_compare_pointers, ((void*)0), ((void*)0));

  type = remap_type_1 (type, &id);

  splay_tree_delete (id.decl_map);

  return type;
}
