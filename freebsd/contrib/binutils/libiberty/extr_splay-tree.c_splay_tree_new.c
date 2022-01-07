
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int splay_tree_delete_value_fn ;
typedef int splay_tree_delete_key_fn ;
typedef int splay_tree_compare_fn ;
typedef int splay_tree ;


 int splay_tree_new_with_allocator (int ,int ,int ,int ,int ,int ) ;
 int splay_tree_xmalloc_allocate ;
 int splay_tree_xmalloc_deallocate ;

splay_tree
splay_tree_new (splay_tree_compare_fn compare_fn,
                splay_tree_delete_key_fn delete_key_fn,
                splay_tree_delete_value_fn delete_value_fn)
{
  return (splay_tree_new_with_allocator
          (compare_fn, delete_key_fn, delete_value_fn,
           splay_tree_xmalloc_allocate, splay_tree_xmalloc_deallocate, 0));
}
