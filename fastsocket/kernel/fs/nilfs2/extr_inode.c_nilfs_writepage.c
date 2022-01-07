
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; scalar_t__ for_reclaim; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_ino; int i_sb; } ;
struct TYPE_2__ {struct inode* host; } ;


 scalar_t__ WB_SYNC_ALL ;
 int nilfs_construct_segment (int ) ;
 int nilfs_flush_segment (int ,int ) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int nilfs_writepage(struct page *page, struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 int err;

 redirty_page_for_writepage(wbc, page);
 unlock_page(page);

 if (wbc->sync_mode == WB_SYNC_ALL) {
  err = nilfs_construct_segment(inode->i_sb);
  if (unlikely(err))
   return err;
 } else if (wbc->for_reclaim)
  nilfs_flush_segment(inode->i_sb, inode->i_ino);

 return 0;
}
