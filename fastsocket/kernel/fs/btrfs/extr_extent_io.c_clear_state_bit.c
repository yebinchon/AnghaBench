
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_state {int state; scalar_t__ end; scalar_t__ start; int * tree; int rb_node; int wq; } ;
struct extent_io_tree {scalar_t__ dirty_bytes; int state; } ;


 int EXTENT_CTLBITS ;
 int EXTENT_DIRTY ;
 int WARN_ON (int) ;
 int clear_state_cb (struct extent_io_tree*,struct extent_state*,int*) ;
 int free_extent_state (struct extent_state*) ;
 int merge_state (struct extent_io_tree*,struct extent_state*) ;
 struct extent_state* next_state (struct extent_state*) ;
 int rb_erase (int *,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static struct extent_state *clear_state_bit(struct extent_io_tree *tree,
         struct extent_state *state,
         int *bits, int wake)
{
 struct extent_state *next;
 int bits_to_clear = *bits & ~EXTENT_CTLBITS;

 if ((bits_to_clear & EXTENT_DIRTY) && (state->state & EXTENT_DIRTY)) {
  u64 range = state->end - state->start + 1;
  WARN_ON(range > tree->dirty_bytes);
  tree->dirty_bytes -= range;
 }
 clear_state_cb(tree, state, bits);
 state->state &= ~bits_to_clear;
 if (wake)
  wake_up(&state->wq);
 if (state->state == 0) {
  next = next_state(state);
  if (state->tree) {
   rb_erase(&state->rb_node, &tree->state);
   state->tree = ((void*)0);
   free_extent_state(state);
  } else {
   WARN_ON(1);
  }
 } else {
  merge_state(tree, state);
  next = next_state(state);
 }
 return next;
}
