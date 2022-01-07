
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct ubifs_inode {int synced_i_size; int ui_lock; } ;
struct page {scalar_t__ index; int flags; TYPE_1__* mapping; } ;
struct inode {TYPE_3__* i_sb; int i_ino; } ;
typedef scalar_t__ pgoff_t ;
typedef int loff_t ;
struct TYPE_6__ {TYPE_2__* s_op; } ;
struct TYPE_5__ {int (* write_inode ) (struct inode*,int *) ;} ;
struct TYPE_4__ {struct inode* host; } ;


 int KM_USER0 ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int PagePrivate (struct page*) ;
 int dbg_gen (char*,int ,scalar_t__,int ) ;
 int do_writepage (struct page*,int) ;
 int flush_dcache_page (struct page*) ;
 int i_size_read (struct inode*) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;
 int memset (void*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct inode*,int *) ;
 int stub2 (struct inode*,int *) ;
 int ubifs_assert (int ) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ubifs_writepage(struct page *page, struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 struct ubifs_inode *ui = ubifs_inode(inode);
 loff_t i_size = i_size_read(inode), synced_i_size;
 pgoff_t end_index = i_size >> PAGE_CACHE_SHIFT;
 int err, len = i_size & (PAGE_CACHE_SIZE - 1);
 void *kaddr;

 dbg_gen("ino %lu, pg %lu, pg flags %#lx",
  inode->i_ino, page->index, page->flags);
 ubifs_assert(PagePrivate(page));


 if (page->index > end_index || (page->index == end_index && !len)) {
  err = 0;
  goto out_unlock;
 }

 spin_lock(&ui->ui_lock);
 synced_i_size = ui->synced_i_size;
 spin_unlock(&ui->ui_lock);


 if (page->index < end_index) {
  if (page->index >= synced_i_size >> PAGE_CACHE_SHIFT) {
   err = inode->i_sb->s_op->write_inode(inode, ((void*)0));
   if (err)
    goto out_unlock;
  }
  return do_writepage(page, PAGE_CACHE_SIZE);
 }
 kaddr = kmap_atomic(page, KM_USER0);
 memset(kaddr + len, 0, PAGE_CACHE_SIZE - len);
 flush_dcache_page(page);
 kunmap_atomic(kaddr, KM_USER0);

 if (i_size > synced_i_size) {
  err = inode->i_sb->s_op->write_inode(inode, ((void*)0));
  if (err)
   goto out_unlock;
 }

 return do_writepage(page, len);

out_unlock:
 unlock_page(page);
 return err;
}
