
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_range {scalar_t__ iomode; } ;


 scalar_t__ IOMODE_ANY ;
 scalar_t__ lo_seg_intersecting (struct pnfs_layout_range*,struct pnfs_layout_range*) ;

__attribute__((used)) static bool
should_free_lseg(struct pnfs_layout_range *lseg_range,
   struct pnfs_layout_range *recall_range)
{
 return (recall_range->iomode == IOMODE_ANY ||
  lseg_range->iomode == recall_range->iomode) &&
        lo_seg_intersecting(lseg_range, recall_range);
}
