
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
typedef TYPE_2__* splay_tree ;
struct TYPE_7__ {scalar_t__ (* comp ) (int ,int ) ;TYPE_1__* root; } ;
struct TYPE_6__ {int key; } ;


 int splay_tree_splay (TYPE_2__*,int ) ;
 scalar_t__ stub1 (int ,int ) ;

splay_tree_node
splay_tree_lookup (splay_tree sp, splay_tree_key key)
{
  splay_tree_splay (sp, key);

  if (sp->root && (*sp->comp)(sp->root->key, key) == 0)
    return sp->root;
  else
    return 0;
}
