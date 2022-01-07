
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mfsplay_tree_s {int dummy; } ;
typedef TYPE_1__* mfsplay_tree ;
struct TYPE_4__ {scalar_t__ num_keys; scalar_t__ last_splayed_key_p; int * root; } ;


 TYPE_1__* mfsplay_tree_xmalloc (int) ;

__attribute__((used)) static mfsplay_tree
mfsplay_tree_new ()
{
  mfsplay_tree sp = mfsplay_tree_xmalloc (sizeof (struct mfsplay_tree_s));
  sp->root = ((void*)0);
  sp->last_splayed_key_p = 0;
  sp->num_keys = 0;

  return sp;
}
