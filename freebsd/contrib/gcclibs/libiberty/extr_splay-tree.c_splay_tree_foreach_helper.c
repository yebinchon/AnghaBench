
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* splay_tree_node ;
typedef int (* splay_tree_foreach_fn ) (TYPE_1__*,void*) ;
typedef int splay_tree ;
struct TYPE_6__ {struct TYPE_6__* right; struct TYPE_6__* left; } ;


 int stub1 (TYPE_1__*,void*) ;

__attribute__((used)) static int
splay_tree_foreach_helper (splay_tree sp, splay_tree_node node,
                           splay_tree_foreach_fn fn, void *data)
{
  int val;

  if (!node)
    return 0;

  val = splay_tree_foreach_helper (sp, node->left, fn, data);
  if (val)
    return val;

  val = (*fn)(node, data);
  if (val)
    return val;

  return splay_tree_foreach_helper (sp, node->right, fn, data);
}
