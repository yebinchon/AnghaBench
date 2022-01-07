
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lpt_heap {struct ubifs_lprops** arr; } ;
struct ubifs_lprops {int hpos; } ;
struct ubifs_info {int dummy; } ;


 int get_heap_comp_val (struct ubifs_lprops*,int) ;

__attribute__((used)) static void move_up_lpt_heap(struct ubifs_info *c, struct ubifs_lpt_heap *heap,
        struct ubifs_lprops *lprops, int cat)
{
 int val1, val2, hpos;

 hpos = lprops->hpos;
 if (!hpos)
  return;
 val1 = get_heap_comp_val(lprops, cat);

 do {
  int ppos = (hpos - 1) / 2;

  val2 = get_heap_comp_val(heap->arr[ppos], cat);
  if (val2 >= val1)
   return;

  heap->arr[ppos]->hpos = hpos;
  heap->arr[hpos] = heap->arr[ppos];
  heap->arr[ppos] = lprops;
  lprops->hpos = ppos;
  hpos = ppos;
 } while (hpos);
}
