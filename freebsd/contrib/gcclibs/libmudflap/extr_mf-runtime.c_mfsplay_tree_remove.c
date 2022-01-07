
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* mfsplay_tree_node ;
typedef scalar_t__ mfsplay_tree_key ;
typedef TYPE_2__* mfsplay_tree ;
struct TYPE_7__ {TYPE_1__* root; int num_keys; scalar_t__ last_splayed_key_p; } ;
struct TYPE_6__ {scalar_t__ key; struct TYPE_6__* right; struct TYPE_6__* left; } ;


 int mfsplay_tree_free (TYPE_1__*) ;
 int mfsplay_tree_splay (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static void
mfsplay_tree_remove (mfsplay_tree sp, mfsplay_tree_key key)
{
  mfsplay_tree_splay (sp, key);
  sp->last_splayed_key_p = 0;
  if (sp->root && (sp->root->key == key))
    {
      mfsplay_tree_node left, right;
      left = sp->root->left;
      right = sp->root->right;

      mfsplay_tree_free (sp->root);
      sp->num_keys--;


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
