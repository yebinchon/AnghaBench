
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ mfsplay_tree_key ;
typedef TYPE_1__* mfsplay_tree ;
struct TYPE_5__ {scalar_t__ root; int last_splayed_key_p; scalar_t__ last_splayed_key; int max_depth; scalar_t__ rebalance_p; scalar_t__ depth; } ;


 int abort () ;
 int mfsplay_tree_rebalance (TYPE_1__*) ;
 int mfsplay_tree_splay_helper (TYPE_1__*,scalar_t__,scalar_t__*,int *,int *) ;

__attribute__((used)) static void
mfsplay_tree_splay (mfsplay_tree sp, mfsplay_tree_key key)
{
  if (sp->root == 0)
    return;


  if (sp->last_splayed_key_p &&
      (sp->last_splayed_key == key))
    return;
  sp->max_depth = 2500;
  sp->rebalance_p = sp->depth = 0;

  mfsplay_tree_splay_helper (sp, key, &sp->root, ((void*)0), ((void*)0));
  if (sp->rebalance_p)
    {
      mfsplay_tree_rebalance (sp);

      sp->rebalance_p = sp->depth = 0;
      mfsplay_tree_splay_helper (sp, key, &sp->root, ((void*)0), ((void*)0));

      if (sp->rebalance_p)
        abort ();
    }



  sp->last_splayed_key = key;
  sp->last_splayed_key_p = 1;
}
