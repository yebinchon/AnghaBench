
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
typedef TYPE_2__* splay_tree ;
struct TYPE_7__ {scalar_t__ (* comp ) (int ,int ) ;TYPE_1__* root; int allocate_data; int (* deallocate ) (TYPE_1__*,int ) ;int (* delete_value ) (int ) ;} ;
struct TYPE_6__ {struct TYPE_6__* right; int value; struct TYPE_6__* left; int key; } ;


 int splay_tree_splay (TYPE_2__*,int ) ;
 scalar_t__ stub1 (int ,int ) ;
 int stub2 (int ) ;
 int stub3 (TYPE_1__*,int ) ;

void
splay_tree_remove (splay_tree sp, splay_tree_key key)
{
  splay_tree_splay (sp, key);

  if (sp->root && (*sp->comp) (sp->root->key, key) == 0)
    {
      splay_tree_node left, right;

      left = sp->root->left;
      right = sp->root->right;


      if (sp->delete_value)
 (*sp->delete_value) (sp->root->value);
      (*sp->deallocate) (sp->root, sp->allocate_data);



      if (left)
 {
   sp->root = left;



   if (right)
     {
       while (left->right)
  left = left->right;
       left->right = right;
     }
 }
      else
 sp->root = right;
    }
}
