
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {int ui_size; int ui_mutex; } ;
struct ubifs_info {scalar_t__ nospace_rp; scalar_t__ nospace; } ;
struct ubifs_budget_req {int dirtied_page; int dirtied_ino; int dirtied_ino_d; } ;
struct page {int dummy; } ;
struct inode {int i_size; int i_ctime; int i_mtime; int i_mapping; int i_ino; } ;
struct iattr {int ia_size; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int ENOSPC ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ PageDirty (struct page*) ;
 int PagePrivate (struct page*) ;
 scalar_t__ UBIFS_BLOCKS_PER_PAGE_SHIFT ;
 int UBIFS_BLOCK_SIZE ;
 int UBIFS_TRUN_NODE_SZ ;
 int clear_page_dirty_for_io (struct page*) ;
 int dbg_gen (char*,int ,int,int) ;
 int do_attr_changes (struct inode*,struct iattr const*) ;
 int do_writepage (struct page*,int) ;
 struct page* find_lock_page (int ,int) ;
 int memset (struct ubifs_budget_req*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_cache_release (struct page*) ;
 int smp_wmb () ;
 int ubifs_assert (int ) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_current_time (struct inode*) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_truncate (struct ubifs_info*,struct inode*,int,int) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;
 int unlock_page (struct page*) ;
 int vmtruncate (struct inode*,int) ;

__attribute__((used)) static int do_truncation(struct ubifs_info *c, struct inode *inode,
    const struct iattr *attr)
{
 int err;
 struct ubifs_budget_req req;
 loff_t old_size = inode->i_size, new_size = attr->ia_size;
 int offset = new_size & (UBIFS_BLOCK_SIZE - 1), budgeted = 1;
 struct ubifs_inode *ui = ubifs_inode(inode);

 dbg_gen("ino %lu, size %lld -> %lld", inode->i_ino, old_size, new_size);
 memset(&req, 0, sizeof(struct ubifs_budget_req));






 if (new_size & (UBIFS_BLOCK_SIZE - 1))
  req.dirtied_page = 1;

 req.dirtied_ino = 1;

 req.dirtied_ino_d = UBIFS_TRUN_NODE_SZ;
 err = ubifs_budget_space(c, &req);
 if (err) {




  if (new_size || err != -ENOSPC)
   return err;
  budgeted = 0;
 }

 err = vmtruncate(inode, new_size);
 if (err)
  goto out_budg;

 if (offset) {
  pgoff_t index = new_size >> PAGE_CACHE_SHIFT;
  struct page *page;

  page = find_lock_page(inode->i_mapping, index);
  if (page) {
   if (PageDirty(page)) {
    ubifs_assert(PagePrivate(page));

    clear_page_dirty_for_io(page);
    if (UBIFS_BLOCKS_PER_PAGE_SHIFT)
     offset = new_size &
       (PAGE_CACHE_SIZE - 1);
    err = do_writepage(page, offset);
    page_cache_release(page);
    if (err)
     goto out_budg;




   } else {





    unlock_page(page);
    page_cache_release(page);
   }
  }
 }

 mutex_lock(&ui->ui_mutex);
 ui->ui_size = inode->i_size;

 inode->i_mtime = inode->i_ctime = ubifs_current_time(inode);

 do_attr_changes(inode, attr);
 err = ubifs_jnl_truncate(c, inode, old_size, new_size);
 mutex_unlock(&ui->ui_mutex);

out_budg:
 if (budgeted)
  ubifs_release_budget(c, &req);
 else {
  c->nospace = c->nospace_rp = 0;
  smp_wmb();
 }
 return err;
}
