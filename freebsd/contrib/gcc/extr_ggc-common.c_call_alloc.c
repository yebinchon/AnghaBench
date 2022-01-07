
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traversal_state {int ptrs_i; struct ptr_data** ptrs; int d; } ;
struct ptr_data {scalar_t__ note_ptr_fn; int type; int size; int obj; int new_addr; } ;


 int ggc_pch_alloc_object (int ,int ,int ,int,int ) ;
 scalar_t__ gt_pch_p_S ;

__attribute__((used)) static int
call_alloc (void **slot, void *state_p)
{
  struct ptr_data *d = (struct ptr_data *)*slot;
  struct traversal_state *state = (struct traversal_state *)state_p;

  d->new_addr = ggc_pch_alloc_object (state->d, d->obj, d->size,
          d->note_ptr_fn == gt_pch_p_S,
          d->type);
  state->ptrs[state->ptrs_i++] = d;
  return 1;
}
