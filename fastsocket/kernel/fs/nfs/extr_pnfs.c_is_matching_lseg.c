
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_range {scalar_t__ iomode; int length; } ;


 scalar_t__ IOMODE_RW ;
 int lo_seg_contained (struct pnfs_layout_range*,struct pnfs_layout_range*) ;
 int lo_seg_intersecting (struct pnfs_layout_range*,struct pnfs_layout_range*) ;

__attribute__((used)) static int
is_matching_lseg(struct pnfs_layout_range *ls_range,
   struct pnfs_layout_range *range)
{
 struct pnfs_layout_range range1;

 if ((range->iomode == IOMODE_RW &&
      ls_range->iomode != IOMODE_RW) ||
     !lo_seg_intersecting(ls_range, range))
  return 0;


 range1 = *range;
 range1.length = 1;
 return lo_seg_contained(ls_range, &range1);
}
