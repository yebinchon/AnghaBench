
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_journal {int j_dirty_buffers_lock; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_sb; } ;
struct buffer_head {struct buffer_head* b_this_page; scalar_t__ b_private; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct inode* host; } ;


 int PageChecked (struct page*) ;
 struct reiserfs_journal* SB_JOURNAL (int ) ;
 int WARN_ON (int ) ;
 int buffer_dirty (struct buffer_head*) ;
 int buffer_locked (struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int reiserfs_free_jh (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_to_free_buffers (struct page*) ;

__attribute__((used)) static int reiserfs_releasepage(struct page *page, gfp_t unused_gfp_flags)
{
 struct inode *inode = page->mapping->host;
 struct reiserfs_journal *j = SB_JOURNAL(inode->i_sb);
 struct buffer_head *head;
 struct buffer_head *bh;
 int ret = 1;

 WARN_ON(PageChecked(page));
 spin_lock(&j->j_dirty_buffers_lock);
 head = page_buffers(page);
 bh = head;
 do {
  if (bh->b_private) {
   if (!buffer_dirty(bh) && !buffer_locked(bh)) {
    reiserfs_free_jh(bh);
   } else {
    ret = 0;
    break;
   }
  }
  bh = bh->b_this_page;
 } while (bh != head);
 if (ret)
  ret = try_to_free_buffers(page);
 spin_unlock(&j->j_dirty_buffers_lock);
 return ret;
}
