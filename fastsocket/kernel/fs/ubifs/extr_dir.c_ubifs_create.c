
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_inode {int ui_size; int ui_mutex; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_ino; int new_dent; int dirtied_ino; } ;
struct nameidata {int dummy; } ;
struct inode {int i_size; int i_ctime; int i_mtime; int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int name; int len; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;


 int CALC_DENT_SIZE (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dbg_gen (char*,int ,int ,int,int ) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int make_bad_inode (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_err (char*,int) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_update (struct ubifs_info*,struct inode*,TYPE_2__*,struct inode*,int ,int ) ;
 struct inode* ubifs_new_inode (struct ubifs_info*,struct inode*,int) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;

__attribute__((used)) static int ubifs_create(struct inode *dir, struct dentry *dentry, int mode,
   struct nameidata *nd)
{
 struct inode *inode;
 struct ubifs_info *c = dir->i_sb->s_fs_info;
 int err, sz_change = CALC_DENT_SIZE(dentry->d_name.len);
 struct ubifs_budget_req req = { .new_ino = 1, .new_dent = 1,
     .dirtied_ino = 1 };
 struct ubifs_inode *dir_ui = ubifs_inode(dir);






 dbg_gen("dent '%.*s', mode %#x in dir ino %lu",
  dentry->d_name.len, dentry->d_name.name, mode, dir->i_ino);

 err = ubifs_budget_space(c, &req);
 if (err)
  return err;

 inode = ubifs_new_inode(c, dir, mode);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto out_budg;
 }

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
 ubifs_err("cannot create regular file, error %d", err);
 return err;
}
