
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct reiserfs_transaction_handle {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_size; int i_sb; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;
struct TYPE_6__ {int i_flags; } ;
struct TYPE_5__ {struct reiserfs_transaction_handle* journal_info; } ;
struct TYPE_4__ {struct inode* host; } ;


 unsigned long AOP_FLAG_CONT_EXPAND ;
 int PAGE_CACHE_SIZE ;
 int PageUptodate (struct page*) ;
 TYPE_3__* REISERFS_I (struct inode*) ;
 TYPE_2__* current ;
 int flush_dcache_page (struct page*) ;
 scalar_t__ have_large_tails (int ) ;
 scalar_t__ have_small_tails (int ) ;
 int i_block_size (struct inode*) ;
 int i_pack_on_close_mask ;
 int journal_begin (struct reiserfs_transaction_handle*,int ,int) ;
 int journal_end (struct reiserfs_transaction_handle*,int ,int) ;
 int mark_inode_dirty (struct inode*) ;
 int page_cache_release (struct page*) ;
 int page_zero_new_buffers (struct page*,unsigned int,unsigned int) ;
 int reiserfs_commit_page (struct inode*,struct page*,unsigned int,unsigned int) ;
 int reiserfs_end_persistent_transaction (struct reiserfs_transaction_handle*) ;
 scalar_t__ reiserfs_transaction_running (int ) ;
 int reiserfs_update_inode_transaction (struct inode*) ;
 int reiserfs_update_sd (struct reiserfs_transaction_handle*,struct inode*) ;
 int reiserfs_wait_on_write_block (int ) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int reiserfs_write_end(struct file *file, struct address_space *mapping,
         loff_t pos, unsigned len, unsigned copied,
         struct page *page, void *fsdata)
{
 struct inode *inode = page->mapping->host;
 int ret = 0;
 int update_sd = 0;
 struct reiserfs_transaction_handle *th;
 unsigned start;

 if ((unsigned long)fsdata & AOP_FLAG_CONT_EXPAND)
  pos ++;

 reiserfs_wait_on_write_block(inode->i_sb);
 if (reiserfs_transaction_running(inode->i_sb))
  th = current->journal_info;
 else
  th = ((void*)0);

 start = pos & (PAGE_CACHE_SIZE - 1);
 if (unlikely(copied < len)) {
  if (!PageUptodate(page))
   copied = 0;

  page_zero_new_buffers(page, start + copied, start + len);
 }
 flush_dcache_page(page);

 reiserfs_commit_page(inode, page, start, start + copied);





 pos += copied;
 if (pos > inode->i_size) {
  struct reiserfs_transaction_handle myth;
  reiserfs_write_lock(inode->i_sb);



  if ((have_large_tails(inode->i_sb)
       && inode->i_size > i_block_size(inode) * 4)
      || (have_small_tails(inode->i_sb)
   && inode->i_size > i_block_size(inode)))
   REISERFS_I(inode)->i_flags &= ~i_pack_on_close_mask;

  ret = journal_begin(&myth, inode->i_sb, 1);
  if (ret) {
   reiserfs_write_unlock(inode->i_sb);
   goto journal_error;
  }
  reiserfs_update_inode_transaction(inode);
  inode->i_size = pos;





  mark_inode_dirty(inode);
  reiserfs_update_sd(&myth, inode);
  update_sd = 1;
  ret = journal_end(&myth, inode->i_sb, 1);
  reiserfs_write_unlock(inode->i_sb);
  if (ret)
   goto journal_error;
 }
 if (th) {
  reiserfs_write_lock(inode->i_sb);
  if (!update_sd)
   mark_inode_dirty(inode);
  ret = reiserfs_end_persistent_transaction(th);
  reiserfs_write_unlock(inode->i_sb);
  if (ret)
   goto out;
 }

      out:
 unlock_page(page);
 page_cache_release(page);
 return ret == 0 ? copied : ret;

      journal_error:
 if (th) {
  reiserfs_write_lock(inode->i_sb);
  if (!update_sd)
   reiserfs_update_sd(th, inode);
  ret = reiserfs_end_persistent_transaction(th);
  reiserfs_write_unlock(inode->i_sb);
 }

 goto out;
}
