
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct key {int dummy; } ;
struct file {struct key* private_data; } ;
struct TYPE_5__ {size_t size; } ;
struct TYPE_4__ {int unique; int vnode; int vid; } ;
struct afs_vnode {int lock; int flags; TYPE_2__ status; TYPE_1__ fid; } ;
struct TYPE_6__ {int i_mapping; } ;


 int AFS_VNODE_MOUNTPOINT ;
 TYPE_3__* AFS_VNODE_TO_I (struct afs_vnode*) ;
 int EIO ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 scalar_t__ PageError (struct page*) ;
 int _debug (char*,...) ;
 int _enter (char*,int ,int ,int ) ;
 int _leave (char*,int) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int page_cache_release (struct page*) ;
 struct page* read_mapping_page (int ,int ,struct file*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int afs_mntpt_check_symlink(struct afs_vnode *vnode, struct key *key)
{
 struct file file = {
  .private_data = key,
 };
 struct page *page;
 size_t size;
 char *buf;
 int ret;

 _enter("{%x:%u,%u}",
        vnode->fid.vid, vnode->fid.vnode, vnode->fid.unique);


 page = read_mapping_page(AFS_VNODE_TO_I(vnode)->i_mapping, 0, &file);
 if (IS_ERR(page)) {
  ret = PTR_ERR(page);
  goto out;
 }

 ret = -EIO;
 if (PageError(page))
  goto out_free;

 buf = kmap(page);


 size = vnode->status.size;
 _debug("symlink to %*.*s", (int) size, (int) size, buf);

 if (size > 2 &&
     (buf[0] == '%' || buf[0] == '#') &&
     buf[size - 1] == '.'
     ) {
  _debug("symlink is a mountpoint");
  spin_lock(&vnode->lock);
  set_bit(AFS_VNODE_MOUNTPOINT, &vnode->flags);
  spin_unlock(&vnode->lock);
 }

 ret = 0;

 kunmap(page);
out_free:
 page_cache_release(page);
out:
 _leave(" = %d", ret);
 return ret;
}
