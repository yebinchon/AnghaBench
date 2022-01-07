
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {int dummy; } ;


 int ACCESS_ONCE (int ) ;
 int BUG_ON (int) ;
 int PageLocked (struct page*) ;
 int create_empty_buffers (struct page*,int,unsigned int) ;
 struct buffer_head* page_buffers (struct page*) ;
 int page_has_buffers (struct page*) ;

__attribute__((used)) static struct buffer_head *create_page_buffers(struct page *page, struct inode *inode, unsigned int b_state)
{
 BUG_ON(!PageLocked(page));

 if (!page_has_buffers(page))
  create_empty_buffers(page, 1 << ACCESS_ONCE(inode->i_blkbits), b_state);
 return page_buffers(page);
}
