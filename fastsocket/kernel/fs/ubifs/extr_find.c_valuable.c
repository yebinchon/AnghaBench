
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_lpt_heap {int max_cnt; int cnt; } ;
struct ubifs_lprops {int flags; scalar_t__ dirty; scalar_t__ free; } ;
struct TYPE_2__ {int empty_lebs; int taken_empty_lebs; } ;
struct ubifs_info {int freeable_cnt; int lsave_cnt; TYPE_1__ lst; scalar_t__ dark_wm; struct ubifs_lpt_heap* lpt_heap; } ;


 int LPROPS_CAT_MASK ;







__attribute__((used)) static int valuable(struct ubifs_info *c, const struct ubifs_lprops *lprops)
{
 int n, cat = lprops->flags & LPROPS_CAT_MASK;
 struct ubifs_lpt_heap *heap;

 switch (cat) {
 case 133:
 case 132:
 case 129:
  heap = &c->lpt_heap[cat - 1];
  if (heap->cnt < heap->max_cnt)
   return 1;
  if (lprops->free + lprops->dirty >= c->dark_wm)
   return 1;
  return 0;
 case 131:
  n = c->lst.empty_lebs + c->freeable_cnt -
      c->lst.taken_empty_lebs;
  if (n < c->lsave_cnt)
   return 1;
  return 0;
 case 128:
  return 1;
 case 130:
  return 1;
 }
 return 0;
}
