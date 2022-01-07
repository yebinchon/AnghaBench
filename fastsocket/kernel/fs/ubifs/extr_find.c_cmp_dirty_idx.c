
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_lprops {int dirty; int free; } ;



__attribute__((used)) static int cmp_dirty_idx(const struct ubifs_lprops **a,
    const struct ubifs_lprops **b)
{
 const struct ubifs_lprops *lpa = *a;
 const struct ubifs_lprops *lpb = *b;

 return lpa->dirty + lpa->free - lpb->dirty - lpb->free;
}
