
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree ;
struct TYPE_3__ {int value; int key; } ;


 int splay_tree_insert (int ,int ,int ) ;

__attribute__((used)) static int
insert_subset_children (splay_tree_node node, void *data)
{
  splay_tree_insert ((splay_tree) data, node->key, node->value);

  return 0;
}
