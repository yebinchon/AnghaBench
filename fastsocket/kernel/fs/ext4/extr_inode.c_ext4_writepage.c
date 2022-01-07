
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {unsigned int index; TYPE_1__* mapping; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef unsigned int loff_t ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct inode* host; } ;


 int ClearPageChecked (struct page*) ;
 int NOBH ;
 unsigned int PAGE_CACHE_MASK ;
 int PAGE_CACHE_SHIFT ;
 unsigned int PAGE_CACHE_SIZE ;
 int PF_KSWAPD ;
 int PF_MEMALLOC ;
 scalar_t__ PageChecked (struct page*) ;
 int WARN_ON_ONCE (int) ;
 int __ext4_journalled_writepage (struct page*,struct writeback_control*,unsigned int) ;
 int block_commit_write (struct page*,int ,unsigned int) ;
 int block_prepare_write (struct page*,int ,unsigned int,int ) ;
 int block_write_full_page (struct page*,int ,struct writeback_control*) ;
 TYPE_2__* current ;
 int ext4_bh_delay_or_unwritten ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 scalar_t__ ext4_should_writeback_data (struct inode*) ;
 unsigned int i_size_read (struct inode*) ;
 int noalloc_get_block_write ;
 int nobh_writepage (struct page*,int ,struct writeback_control*) ;
 struct buffer_head* page_buffers (struct page*) ;
 scalar_t__ page_has_buffers (struct page*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 scalar_t__ test_opt (int ,int ) ;
 int trace_ext4_writepage (struct inode*,struct page*) ;
 int unlock_page (struct page*) ;
 scalar_t__ walk_page_buffers (int *,struct buffer_head*,int ,unsigned int,int *,int ) ;

__attribute__((used)) static int ext4_writepage(struct page *page,
     struct writeback_control *wbc)
{
 int ret = 0;
 loff_t size;
 unsigned int len;
 struct buffer_head *page_bufs;
 struct inode *inode = page->mapping->host;

 trace_ext4_writepage(inode, page);
 size = i_size_read(inode);
 if (page->index == size >> PAGE_CACHE_SHIFT)
  len = size & ~PAGE_CACHE_MASK;
 else
  len = PAGE_CACHE_SIZE;

 if (page_has_buffers(page)) {
  page_bufs = page_buffers(page);
  if (walk_page_buffers(((void*)0), page_bufs, 0, len, ((void*)0),
     ext4_bh_delay_or_unwritten)) {
   WARN_ON_ONCE((current->flags & (PF_MEMALLOC|PF_KSWAPD)) ==
    PF_MEMALLOC);
   redirty_page_for_writepage(wbc, page);
   unlock_page(page);
   return 0;
  }
 } else {
  ret = block_prepare_write(page, 0, len,
       noalloc_get_block_write);
  if (!ret) {
   page_bufs = page_buffers(page);

   if (walk_page_buffers(((void*)0), page_bufs, 0, len, ((void*)0),
      ext4_bh_delay_or_unwritten)) {
    redirty_page_for_writepage(wbc, page);
    unlock_page(page);
    return 0;
   }
  } else {





   redirty_page_for_writepage(wbc, page);
   unlock_page(page);
   return 0;
  }

  block_commit_write(page, 0, len);
 }

 if (PageChecked(page) && ext4_should_journal_data(inode)) {




  ClearPageChecked(page);
  return __ext4_journalled_writepage(page, wbc, len);
 }

 if (test_opt(inode->i_sb, NOBH) && ext4_should_writeback_data(inode))
  ret = nobh_writepage(page, noalloc_get_block_write, wbc);
 else
  ret = block_write_full_page(page, noalloc_get_block_write,
         wbc);

 return ret;
}
