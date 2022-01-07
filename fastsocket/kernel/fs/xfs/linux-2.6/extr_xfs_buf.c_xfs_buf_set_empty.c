
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buf {size_t b_buffer_length; size_t b_count_desired; int b_flags; int b_bn; scalar_t__ b_file_offset; int * b_addr; scalar_t__ b_page_count; int * b_pages; } ;


 int XBF_MAPPED ;
 int XFS_BUF_DADDR_NULL ;
 int _xfs_buf_free_pages (struct xfs_buf*) ;

void
xfs_buf_set_empty(
 struct xfs_buf *bp,
 size_t len)
{
 if (bp->b_pages)
  _xfs_buf_free_pages(bp);

 bp->b_pages = ((void*)0);
 bp->b_page_count = 0;
 bp->b_addr = ((void*)0);
 bp->b_file_offset = 0;
 bp->b_buffer_length = bp->b_count_desired = len;
 bp->b_bn = XFS_BUF_DADDR_NULL;
 bp->b_flags &= ~XBF_MAPPED;
}
