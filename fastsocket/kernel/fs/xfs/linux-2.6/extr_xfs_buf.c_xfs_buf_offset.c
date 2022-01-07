
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xfs_caddr_t ;
struct TYPE_4__ {int b_flags; struct page** b_pages; scalar_t__ b_offset; } ;
typedef TYPE_1__ xfs_buf_t ;
struct page {int dummy; } ;


 size_t PAGE_SHIFT ;
 int PAGE_SIZE ;
 int XBF_MAPPED ;
 scalar_t__ XFS_BUF_PTR (TYPE_1__*) ;
 scalar_t__ page_address (struct page*) ;

xfs_caddr_t
xfs_buf_offset(
 xfs_buf_t *bp,
 size_t offset)
{
 struct page *page;

 if (bp->b_flags & XBF_MAPPED)
  return XFS_BUF_PTR(bp) + offset;

 offset += bp->b_offset;
 page = bp->b_pages[offset >> PAGE_SHIFT];
 return (xfs_caddr_t)page_address(page) + (offset & (PAGE_SIZE-1));
}
