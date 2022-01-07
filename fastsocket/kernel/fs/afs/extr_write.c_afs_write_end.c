
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int index; } ;
struct file {TYPE_1__* f_dentry; } ;
struct TYPE_4__ {int vnode; int vid; } ;
struct afs_vnode {int writeback_lock; int vfs_inode; TYPE_2__ fid; } ;
struct address_space {int dummy; } ;
typedef unsigned int loff_t ;
struct TYPE_3__ {int d_inode; } ;


 struct afs_vnode* AFS_FS_I (int ) ;
 scalar_t__ PageDirty (struct page*) ;
 int _debug (char*) ;
 int _enter (char*,int ,int ,int ) ;
 unsigned int i_size_read (int *) ;
 int i_size_write (int *,unsigned int) ;
 int page_cache_release (struct page*) ;
 int set_page_dirty (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_page (struct page*) ;

int afs_write_end(struct file *file, struct address_space *mapping,
    loff_t pos, unsigned len, unsigned copied,
    struct page *page, void *fsdata)
{
 struct afs_vnode *vnode = AFS_FS_I(file->f_dentry->d_inode);
 loff_t i_size, maybe_i_size;

 _enter("{%x:%u},{%lx}",
        vnode->fid.vid, vnode->fid.vnode, page->index);

 maybe_i_size = pos + copied;

 i_size = i_size_read(&vnode->vfs_inode);
 if (maybe_i_size > i_size) {
  spin_lock(&vnode->writeback_lock);
  i_size = i_size_read(&vnode->vfs_inode);
  if (maybe_i_size > i_size)
   i_size_write(&vnode->vfs_inode, maybe_i_size);
  spin_unlock(&vnode->writeback_lock);
 }

 set_page_dirty(page);
 if (PageDirty(page))
  _debug("dirtied");
 unlock_page(page);
 page_cache_release(page);

 return copied;
}
