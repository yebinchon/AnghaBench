
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int * tree ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
struct TYPE_8__ {int src_fn; int decl_map; } ;
typedef TYPE_2__ copy_body_data ;
struct TYPE_7__ {int value; } ;


 int insert_decl_map (TYPE_2__*,int *,int *) ;
 int * remap_type_1 (int *,TYPE_2__*) ;
 TYPE_1__* splay_tree_lookup (int ,int ) ;
 int variably_modified_type_p (int *,int ) ;

tree
remap_type (tree type, copy_body_data *id)
{
  splay_tree_node node;

  if (type == ((void*)0))
    return type;


  node = splay_tree_lookup (id->decl_map, (splay_tree_key) type);
  if (node)
    return (tree) node->value;


  if (! variably_modified_type_p (type, id->src_fn))
    {
      insert_decl_map (id, type, type);
      return type;
    }

  return remap_type_1 (type, id);
}
