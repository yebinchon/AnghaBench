
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ubifs_dev_desc {int dummy; } ubifs_dev_desc ;
struct ubifs_inode {int ui_size; int data_len; int ui_mutex; union ubifs_dev_desc* data; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; int dirtied_ino; int new_ino_d; } ;
struct inode {int i_size; int i_ctime; int i_mtime; int i_mode; int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int name; int len; } ;
struct dentry {TYPE_2__ d_name; } ;
typedef int dev_t ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;


 int ALIGN (int,int) ;
 int CALC_DENT_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 scalar_t__ S_ISBLK (int) ;
 scalar_t__ S_ISCHR (int) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dbg_gen (char*,int ,int ,int ) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int kfree (union ubifs_dev_desc*) ;
 union ubifs_dev_desc* kmalloc (int,int ) ;
 int make_bad_inode (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int new_valid_dev (int ) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_encode_dev (union ubifs_dev_desc*,int ) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_update (struct ubifs_info*,struct inode*,TYPE_2__*,struct inode*,int ,int ) ;
 struct inode* ubifs_new_inode (struct ubifs_info*,struct inode*,int) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;

__attribute__((used)) static int ubifs_mknod(struct inode *dir, struct dentry *dentry,
         int mode, dev_t rdev)
{
 struct inode *inode;
 struct ubifs_inode *ui;
 struct ubifs_inode *dir_ui = ubifs_inode(dir);
 struct ubifs_info *c = dir->i_sb->s_fs_info;
 union ubifs_dev_desc *dev = ((void*)0);
 int sz_change = CALC_DENT_SIZE(dentry->d_name.len);
 int err, devlen = 0;
 struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1,
     .new_ino_d = ALIGN(devlen, 8),
     .dirtied_ino = 1 };






 dbg_gen("dent '%.*s' in dir ino %lu",
  dentry->d_name.len, dentry->d_name.name, dir->i_ino);

 if (!new_valid_dev(rdev))
  return -EINVAL;

 if (S_ISBLK(mode) || S_ISCHR(mode)) {
  dev = kmalloc(sizeof(union ubifs_dev_desc), GFP_NOFS);
  if (!dev)
   return -ENOMEM;
  devlen = ubifs_encode_dev(dev, rdev);
 }

 err = ubifs_budget_space(c, &req);
 if (err) {
  kfree(dev);
  return err;
 }

 inode = ubifs_new_inode(c, dir, mode);
 if (IS_ERR(inode)) {
  kfree(dev);
  err = PTR_ERR(inode);
  goto out_budg;
 }

 init_special_inode(inode, inode->i_mode, rdev);
 inode->i_size = ubifs_inode(inode)->ui_size = devlen;
 ui = ubifs_inode(inode);
 ui->data = dev;
 ui->data_len = devlen;

 mutex_lock(&dir_ui->ui_mutex);
 dir->i_size += sz_change;
 dir_ui->ui_size = dir->i_size;
 dir->i_mtime = dir->i_ctime = inode->i_ctime;
 err = ubifs_jnl_update(c, dir, &dentry->d_name, inode, 0, 0);
 if (err)
  goto out_cancel;
 mutex_unlock(&dir_ui->ui_mutex);

 ubifs_release_budget(c, &req);
 insert_inode_hash(inode);
 d_instantiate(dentry, inode);
 return 0;

out_cancel:
 dir->i_size -= sz_change;
 dir_ui->ui_size = dir->i_size;
 mutex_unlock(&dir_ui->ui_mutex);
 make_bad_inode(inode);
 iput(inode);
out_budg:
 ubifs_release_budget(c, &req);
 return err;
}
