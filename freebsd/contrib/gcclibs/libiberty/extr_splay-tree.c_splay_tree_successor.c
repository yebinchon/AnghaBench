
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
typedef TYPE_2__* splay_tree ;
struct TYPE_7__ {int (* comp ) (int ,int ) ;TYPE_1__* root; } ;
struct TYPE_6__ {struct TYPE_6__* left; struct TYPE_6__* right; int key; } ;


 int splay_tree_splay (TYPE_2__*,int ) ;
 int stub1 (int ,int ) ;

splay_tree_node
splay_tree_successor (splay_tree sp, splay_tree_key key)
{
  int comparison;
  splay_tree_node node;


  if (!sp->root)
    return ((void*)0);



  splay_tree_splay (sp, key);
  comparison = (*sp->comp)(sp->root->key, key);


  if (comparison > 0)
    return sp->root;


  node = sp->root->right;
  if (node)
    while (node->left)
      node = node->left;

  return node;
}
