
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int splay_tree_foreach_fn ;
typedef TYPE_1__* splay_tree ;
struct TYPE_4__ {int root; } ;


 int splay_tree_foreach_helper (TYPE_1__*,int ,int ,void*) ;

int
splay_tree_foreach (splay_tree sp, splay_tree_foreach_fn fn, void *data)
{
  return splay_tree_foreach_helper (sp, sp->root, fn, data);
}
