
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_inode {int ui_size; int data_len; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int new_dent; int dirtied_ino; int dirtied_ino_d; } ;
struct inode {scalar_t__ i_nlink; int i_size; int i_ctime; int i_mtime; int i_count; int i_mutex; int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int name; int len; } ;
struct dentry {TYPE_2__ d_name; struct inode* d_inode; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;


 int ALIGN (int ,int) ;
 int CALC_DENT_SIZE (int ) ;
 int ENOENT ;
 int atomic_inc (int *) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dbg_check_synced_i_size (struct inode*) ;
 int dbg_gen (char*,int ,int ,int ,scalar_t__,int ) ;
 int drop_nlink (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int iput (struct inode*) ;
 int lock_2_inodes (struct inode*,struct inode*) ;
 int mutex_is_locked (int *) ;
 int ubifs_assert (int ) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_current_time (struct inode*) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_update (struct ubifs_info*,struct inode*,TYPE_2__*,struct inode*,int ,int ) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;
 int unlock_2_inodes (struct inode*,struct inode*) ;

__attribute__((used)) static int ubifs_link(struct dentry *old_dentry, struct inode *dir,
        struct dentry *dentry)
{
 struct ubifs_info *c = dir->i_sb->s_fs_info;
 struct inode *inode = old_dentry->d_inode;
 struct ubifs_inode *ui = ubifs_inode(inode);
 struct ubifs_inode *dir_ui = ubifs_inode(dir);
 int err, sz_change = CALC_DENT_SIZE(dentry->d_name.len);
 struct ubifs_budget_req req = { .new_dent = 1, .dirtied_ino = 2,
    .dirtied_ino_d = ALIGN(ui->data_len, 8) };






 dbg_gen("dent '%.*s' to ino %lu (nlink %d) in dir ino %lu",
  dentry->d_name.len, dentry->d_name.name, inode->i_ino,
  inode->i_nlink, dir->i_ino);
 ubifs_assert(mutex_is_locked(&dir->i_mutex));
 ubifs_assert(mutex_is_locked(&inode->i_mutex));
  if (inode->i_nlink == 0)
   return -ENOENT;

 err = dbg_check_synced_i_size(inode);
 if (err)
  return err;

 err = ubifs_budget_space(c, &req);
 if (err)
  return err;

 lock_2_inodes(dir, inode);
 inc_nlink(inode);
 atomic_inc(&inode->i_count);
 inode->i_ctime = ubifs_current_time(inode);
 dir->i_size += sz_change;
 dir_ui->ui_size = dir->i_size;
 dir->i_mtime = dir->i_ctime = inode->i_ctime;
 err = ubifs_jnl_update(c, dir, &dentry->d_name, inode, 0, 0);
 if (err)
  goto out_cancel;
 unlock_2_inodes(dir, inode);

 ubifs_release_budget(c, &req);
 d_instantiate(dentry, inode);
 return 0;

out_cancel:
 dir->i_size -= sz_change;
 dir_ui->ui_size = dir->i_size;
 drop_nlink(inode);
 unlock_2_inodes(dir, inode);
 ubifs_release_budget(c, &req);
 iput(inode);
 return err;
}
