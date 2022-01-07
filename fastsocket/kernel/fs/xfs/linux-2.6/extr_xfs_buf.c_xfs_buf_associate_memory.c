
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned long b_offset; int b_page_count; size_t b_count_desired; size_t b_buffer_length; int b_flags; int * b_pages; void* b_addr; } ;
typedef TYPE_1__ xfs_buf_t ;


 size_t PAGE_ALIGN (size_t) ;
 unsigned long PAGE_MASK ;
 size_t PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int XBF_DONT_BLOCK ;
 int XBF_MAPPED ;
 int _xfs_buf_free_pages (TYPE_1__*) ;
 int _xfs_buf_get_pages (TYPE_1__*,int,int ) ;
 int mem_to_page (void*) ;

int
xfs_buf_associate_memory(
 xfs_buf_t *bp,
 void *mem,
 size_t len)
{
 int rval;
 int i = 0;
 unsigned long pageaddr;
 unsigned long offset;
 size_t buflen;
 int page_count;

 pageaddr = (unsigned long)mem & PAGE_MASK;
 offset = (unsigned long)mem - pageaddr;
 buflen = PAGE_ALIGN(len + offset);
 page_count = buflen >> PAGE_SHIFT;


 if (bp->b_pages)
  _xfs_buf_free_pages(bp);

 bp->b_pages = ((void*)0);
 bp->b_addr = mem;

 rval = _xfs_buf_get_pages(bp, page_count, XBF_DONT_BLOCK);
 if (rval)
  return rval;

 bp->b_offset = offset;

 for (i = 0; i < bp->b_page_count; i++) {
  bp->b_pages[i] = mem_to_page((void *)pageaddr);
  pageaddr += PAGE_SIZE;
 }

 bp->b_count_desired = len;
 bp->b_buffer_length = buflen;
 bp->b_flags |= XBF_MAPPED;

 return 0;
}
