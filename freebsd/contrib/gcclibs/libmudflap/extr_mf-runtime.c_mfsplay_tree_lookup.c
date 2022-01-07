
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
struct TYPE_6__ {scalar_t__ key; } ;


 int mfsplay_tree_splay (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static mfsplay_tree_node
mfsplay_tree_lookup (mfsplay_tree sp, mfsplay_tree_key key)
{
  mfsplay_tree_splay (sp, key);
  if (sp->root && (sp->root->key == key))
    return sp->root;
  else
    return 0;
}
