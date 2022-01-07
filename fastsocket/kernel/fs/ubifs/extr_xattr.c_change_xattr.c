
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_inode {int data_len; int ui_size; int ui_mutex; int xattr_size; int data; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int dirtied_ino; scalar_t__ dirtied_ino_d; } ;
struct inode {int i_size; int i_ctime; } ;


 scalar_t__ ALIGN (int,int) ;
 scalar_t__ CALC_XATTR_BYTES (int) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int kfree (int ) ;
 int kmalloc (int,int ) ;
 int make_bad_inode (struct inode*) ;
 int memcpy (int ,void const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubifs_assert (int) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_current_time (struct inode*) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_change_xattr (struct ubifs_info*,struct inode*,struct inode*) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;

__attribute__((used)) static int change_xattr(struct ubifs_info *c, struct inode *host,
   struct inode *inode, const void *value, int size)
{
 int err;
 struct ubifs_inode *host_ui = ubifs_inode(host);
 struct ubifs_inode *ui = ubifs_inode(inode);
 struct ubifs_budget_req req = { .dirtied_ino = 2,
  .dirtied_ino_d = ALIGN(size, 8) + ALIGN(host_ui->data_len, 8) };

 ubifs_assert(ui->data_len == inode->i_size);
 err = ubifs_budget_space(c, &req);
 if (err)
  return err;

 kfree(ui->data);
 ui->data = kmalloc(size, GFP_NOFS);
 if (!ui->data) {
  err = -ENOMEM;
  goto out_free;
 }
 memcpy(ui->data, value, size);
 inode->i_size = ui->ui_size = size;
 ui->data_len = size;

 mutex_lock(&host_ui->ui_mutex);
 host->i_ctime = ubifs_current_time(host);
 host_ui->xattr_size -= CALC_XATTR_BYTES(ui->data_len);
 host_ui->xattr_size += CALC_XATTR_BYTES(size);







 err = ubifs_jnl_change_xattr(c, inode, host);
 if (err)
  goto out_cancel;
 mutex_unlock(&host_ui->ui_mutex);

 ubifs_release_budget(c, &req);
 return 0;

out_cancel:
 host_ui->xattr_size -= CALC_XATTR_BYTES(size);
 host_ui->xattr_size += CALC_XATTR_BYTES(ui->data_len);
 mutex_unlock(&host_ui->ui_mutex);
 make_bad_inode(inode);
out_free:
 ubifs_release_budget(c, &req);
 return err;
}
