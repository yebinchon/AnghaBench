
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lpt_heap {struct ubifs_lprops** arr; } ;
struct ubifs_lprops {int hpos; } ;
struct ubifs_info {struct ubifs_lpt_heap* lpt_heap; } ;



__attribute__((used)) static void lpt_heap_replace(struct ubifs_info *c,
        struct ubifs_lprops *old_lprops,
        struct ubifs_lprops *new_lprops, int cat)
{
 struct ubifs_lpt_heap *heap;
 int hpos = new_lprops->hpos;

 heap = &c->lpt_heap[cat - 1];
 heap->arr[hpos] = new_lprops;
}
