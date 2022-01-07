
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int splay_tree_value ;
typedef int splay_tree_key ;
struct TYPE_3__ {int decl_map; } ;
typedef TYPE_1__ copy_body_data ;


 int splay_tree_insert (int ,int ,int ) ;

void
insert_decl_map (copy_body_data *id, tree key, tree value)
{
  splay_tree_insert (id->decl_map, (splay_tree_key) key,
       (splay_tree_value) value);



  if (key != value)
    splay_tree_insert (id->decl_map, (splay_tree_key) value,
         (splay_tree_value) value);
}
