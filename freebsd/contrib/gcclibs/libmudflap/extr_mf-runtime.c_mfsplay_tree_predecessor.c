
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* mfsplay_tree_node ;
typedef scalar_t__ mfsplay_tree_key ;
typedef TYPE_2__* mfsplay_tree ;
struct TYPE_7__ {TYPE_1__* root; } ;
struct TYPE_6__ {scalar_t__ key; struct TYPE_6__* right; struct TYPE_6__* left; } ;


 int mfsplay_tree_splay (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static mfsplay_tree_node
mfsplay_tree_predecessor (mfsplay_tree sp, mfsplay_tree_key key)
{
  int comparison;
  mfsplay_tree_node node;

  if (!sp->root)
    return ((void*)0);


  mfsplay_tree_splay (sp, key);
  comparison = ((sp->root->key > key) ? 1 :
                ((sp->root->key < key) ? -1 : 0));


  if (comparison < 0)
    return sp->root;

  node = sp->root->left;
  if (node)
    while (node->right)
      node = node->right;
  return node;
}
