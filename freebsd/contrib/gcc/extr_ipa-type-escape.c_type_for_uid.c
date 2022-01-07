
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
struct TYPE_3__ {int value; } ;


 TYPE_1__* splay_tree_lookup (int ,int ) ;
 int uid_to_canon_type ;

__attribute__((used)) static tree
type_for_uid (int uid)
{
  splay_tree_node result =
    splay_tree_lookup (uid_to_canon_type, (splay_tree_key) uid);

  if (result)
    return (tree) result->value;
  else return ((void*)0);
}
