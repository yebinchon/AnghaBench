
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_inode {unsigned int ui_size; int ui_mutex; } ;
struct ubifs_info {int dirty_pg_cnt; } ;
struct page {int index; } ;
struct inode {unsigned int i_size; int i_ino; TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef unsigned int loff_t ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;


 int I_DIRTY_DATASYNC ;
 unsigned int PAGE_CACHE_SIZE ;
 int PagePrivate (struct page*) ;
 int SetPagePrivate (struct page*) ;
 int __mark_inode_dirty (struct inode*,int ) ;
 int __set_page_dirty_nobuffers (struct page*) ;
 int atomic_long_inc (int *) ;
 int cancel_budget (struct ubifs_info*,struct page*,struct ubifs_inode*,int) ;
 int dbg_gen (char*,unsigned int,unsigned int,...) ;
 unsigned int do_readpage (struct page*) ;
 int i_size_write (struct inode*,unsigned int) ;
 int mutex_is_locked (int *) ;
 int mutex_unlock (int *) ;
 int page_cache_release (struct page*) ;
 int ubifs_assert (int ) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ubifs_write_end(struct file *file, struct address_space *mapping,
      loff_t pos, unsigned len, unsigned copied,
      struct page *page, void *fsdata)
{
 struct inode *inode = mapping->host;
 struct ubifs_inode *ui = ubifs_inode(inode);
 struct ubifs_info *c = inode->i_sb->s_fs_info;
 loff_t end_pos = pos + len;
 int appending = !!(end_pos > inode->i_size);

 dbg_gen("ino %lu, pos %llu, pg %lu, len %u, copied %d, i_size %lld",
  inode->i_ino, pos, page->index, len, copied, inode->i_size);

 if (unlikely(copied < len && len == PAGE_CACHE_SIZE)) {
  dbg_gen("copied %d instead of %d, read page and repeat",
   copied, len);
  cancel_budget(c, page, ui, appending);





  copied = do_readpage(page);
  goto out;
 }

 if (!PagePrivate(page)) {
  SetPagePrivate(page);
  atomic_long_inc(&c->dirty_pg_cnt);
  __set_page_dirty_nobuffers(page);
 }

 if (appending) {
  i_size_write(inode, end_pos);
  ui->ui_size = end_pos;





  __mark_inode_dirty(inode, I_DIRTY_DATASYNC);
  ubifs_assert(mutex_is_locked(&ui->ui_mutex));
  mutex_unlock(&ui->ui_mutex);
 }

out:
 unlock_page(page);
 page_cache_release(page);
 return copied;
}
