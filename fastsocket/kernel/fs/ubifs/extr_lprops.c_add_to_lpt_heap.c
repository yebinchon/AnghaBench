
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lpt_heap {scalar_t__ cnt; scalar_t__ max_cnt; struct ubifs_lprops** arr; } ;
struct ubifs_lprops {int hpos; int list; int flags; } ;
struct ubifs_info {int uncat_list; struct ubifs_lpt_heap* lpt_heap; } ;


 int LPROPS_CAT_MASK ;
 int LPROPS_UNCAT ;
 int LPT_HEAP_SZ ;
 int dbg_check_heap (struct ubifs_info*,struct ubifs_lpt_heap*,int,int) ;
 int get_heap_comp_val (struct ubifs_lprops*,int) ;
 int list_add (int *,int *) ;
 int move_up_lpt_heap (struct ubifs_info*,struct ubifs_lpt_heap*,struct ubifs_lprops*,int) ;
 int ubifs_assert (int) ;

__attribute__((used)) static int add_to_lpt_heap(struct ubifs_info *c, struct ubifs_lprops *lprops,
      int cat)
{
 struct ubifs_lpt_heap *heap = &c->lpt_heap[cat - 1];

 if (heap->cnt >= heap->max_cnt) {
  const int b = LPT_HEAP_SZ / 2 - 1;
  int cpos, val1, val2;



  cpos = (((size_t)lprops >> 4) & b) + b;
  ubifs_assert(cpos >= b);
  ubifs_assert(cpos < LPT_HEAP_SZ);
  ubifs_assert(cpos < heap->cnt);

  val1 = get_heap_comp_val(lprops, cat);
  val2 = get_heap_comp_val(heap->arr[cpos], cat);
  if (val1 > val2) {
   struct ubifs_lprops *lp;

   lp = heap->arr[cpos];
   lp->flags &= ~LPROPS_CAT_MASK;
   lp->flags |= LPROPS_UNCAT;
   list_add(&lp->list, &c->uncat_list);
   lprops->hpos = cpos;
   heap->arr[cpos] = lprops;
   move_up_lpt_heap(c, heap, lprops, cat);
   dbg_check_heap(c, heap, cat, lprops->hpos);
   return 1;
  }
  dbg_check_heap(c, heap, cat, -1);
  return 0;
 } else {
  lprops->hpos = heap->cnt++;
  heap->arr[lprops->hpos] = lprops;
  move_up_lpt_heap(c, heap, lprops, cat);
  dbg_check_heap(c, heap, cat, lprops->hpos);
  return 1;
 }
}
