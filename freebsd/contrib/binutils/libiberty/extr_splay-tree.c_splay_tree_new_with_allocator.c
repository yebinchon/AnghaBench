
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct splay_tree_s {int dummy; } ;
typedef int splay_tree_delete_value_fn ;
typedef int splay_tree_delete_key_fn ;
typedef int splay_tree_deallocate_fn ;
typedef int splay_tree_compare_fn ;
typedef int (* splay_tree_allocate_fn ) (int,void*) ;
typedef TYPE_1__* splay_tree ;
struct TYPE_3__ {void* allocate_data; int deallocate; int (* allocate ) (int,void*) ;int delete_value; int delete_key; int comp; scalar_t__ root; } ;


 int stub1 (int,void*) ;

splay_tree
splay_tree_new_with_allocator (splay_tree_compare_fn compare_fn,
                               splay_tree_delete_key_fn delete_key_fn,
                               splay_tree_delete_value_fn delete_value_fn,
                               splay_tree_allocate_fn allocate_fn,
                               splay_tree_deallocate_fn deallocate_fn,
                               void *allocate_data)
{
  splay_tree sp = (splay_tree) (*allocate_fn) (sizeof (struct splay_tree_s),
                                               allocate_data);
  sp->root = 0;
  sp->comp = compare_fn;
  sp->delete_key = delete_key_fn;
  sp->delete_value = delete_value_fn;
  sp->allocate = allocate_fn;
  sp->deallocate = deallocate_fn;
  sp->allocate_data = allocate_data;

  return sp;
}
