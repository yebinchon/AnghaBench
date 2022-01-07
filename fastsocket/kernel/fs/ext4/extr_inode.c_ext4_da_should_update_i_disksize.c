
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {unsigned long i_blkbits; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct TYPE_2__ {struct inode* host; } ;


 scalar_t__ buffer_delay (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_unwritten (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;

__attribute__((used)) static int ext4_da_should_update_i_disksize(struct page *page,
         unsigned long offset)
{
 struct buffer_head *bh;
 struct inode *inode = page->mapping->host;
 unsigned int idx;
 int i;

 bh = page_buffers(page);
 idx = offset >> inode->i_blkbits;

 for (i = 0; i < idx; i++)
  bh = bh->b_this_page;

 if (!buffer_mapped(bh) || (buffer_delay(bh)) || buffer_unwritten(bh))
  return 0;
 return 1;
}
