
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obstack {int dummy; } ;
struct macro_table {int definitions; int * main_source; struct bcache* bcache; struct obstack* obstack; } ;
struct bcache {int dummy; } ;
typedef int splay_tree_delete_value_fn ;
typedef int splay_tree_delete_key_fn ;
typedef int splay_tree_deallocate_fn ;
typedef int splay_tree_allocate_fn ;


 scalar_t__ macro_alloc ;
 scalar_t__ macro_free ;
 int macro_tree_compare ;
 scalar_t__ macro_tree_delete_key ;
 scalar_t__ macro_tree_delete_value ;
 int memset (struct macro_table*,int ,int) ;
 struct macro_table* obstack_alloc (struct obstack*,int) ;
 int splay_tree_new_with_allocator (int ,int ,int ,int ,int ,struct macro_table*) ;
 struct macro_table* xmalloc (int) ;

struct macro_table *
new_macro_table (struct obstack *obstack,
                 struct bcache *b)
{
  struct macro_table *t;


  if (obstack)
    t = obstack_alloc (obstack, sizeof (*t));
  else
    t = xmalloc (sizeof (*t));

  memset (t, 0, sizeof (*t));
  t->obstack = obstack;
  t->bcache = b;
  t->main_source = ((void*)0);
  t->definitions = (splay_tree_new_with_allocator
                    (macro_tree_compare,
                     ((splay_tree_delete_key_fn) macro_tree_delete_key),
                     ((splay_tree_delete_value_fn) macro_tree_delete_value),
                     ((splay_tree_allocate_fn) macro_alloc),
                     ((splay_tree_deallocate_fn) macro_free),
                     t));

  return t;
}
