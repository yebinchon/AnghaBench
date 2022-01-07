
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct rb_node {int dummy; } ;
struct extent_state {struct extent_io_tree* tree; int rb_node; void* end; void* start; int state; } ;
struct extent_io_tree {int state; } ;


 int EEXIST ;
 int free_extent_state (struct extent_state*) ;
 int split_cb (struct extent_io_tree*,struct extent_state*,void*) ;
 struct rb_node* tree_insert (int *,void*,int *) ;

__attribute__((used)) static int split_state(struct extent_io_tree *tree, struct extent_state *orig,
         struct extent_state *prealloc, u64 split)
{
 struct rb_node *node;

 split_cb(tree, orig, split);

 prealloc->start = orig->start;
 prealloc->end = split - 1;
 prealloc->state = orig->state;
 orig->start = split;

 node = tree_insert(&tree->state, prealloc->end, &prealloc->rb_node);
 if (node) {
  free_extent_state(prealloc);
  return -EEXIST;
 }
 prealloc->tree = tree;
 return 0;
}
