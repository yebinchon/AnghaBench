
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pnfs_layout_range {scalar_t__ offset; int length; } ;


 scalar_t__ end_offset (scalar_t__,int ) ;

__attribute__((used)) static inline int
lo_seg_contained(struct pnfs_layout_range *l1,
   struct pnfs_layout_range *l2)
{
 u64 start1 = l1->offset;
 u64 end1 = end_offset(start1, l1->length);
 u64 start2 = l2->offset;
 u64 end2 = end_offset(start2, l2->length);

 return (start1 <= start2) && (end1 >= end2);
}
