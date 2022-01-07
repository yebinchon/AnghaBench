
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* splay_tree ;
struct TYPE_4__ {int allocate_data; int (* deallocate ) (char*,int ) ;int root; } ;


 int splay_tree_delete_helper (TYPE_1__*,int ) ;
 int stub1 (char*,int ) ;

void
splay_tree_delete (splay_tree sp)
{
  splay_tree_delete_helper (sp, sp->root);
  (*sp->deallocate) ((char*) sp, sp->allocate_data);
}
