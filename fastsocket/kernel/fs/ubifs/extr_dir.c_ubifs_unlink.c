
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_inode {int ui_size; } ;
struct ubifs_info {scalar_t__ nospace_rp; scalar_t__ nospace; } ;
struct ubifs_budget_req {int mod_dent; int dirtied_ino; } ;
struct inode {int i_size; int i_ctime; int i_mtime; int i_mutex; int i_ino; int i_nlink; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int name; int len; } ;
struct dentry {TYPE_2__ d_name; struct inode* d_inode; } ;
struct TYPE_3__ {struct ubifs_info* s_fs_info; } ;


 int CALC_DENT_SIZE (int ) ;
 int ENOSPC ;
 int dbg_check_synced_i_size (struct inode*) ;
 int dbg_gen (char*,int ,int ,int ,int ,int ) ;
 int drop_nlink (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int lock_2_inodes (struct inode*,struct inode*) ;
 int mutex_is_locked (int *) ;
 int smp_wmb () ;
 int ubifs_assert (int ) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_current_time (struct inode*) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_update (struct ubifs_info*,struct inode*,TYPE_2__*,struct inode*,int,int ) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;
 int unlock_2_inodes (struct inode*,struct inode*) ;

__attribute__((used)) static int ubifs_unlink(struct inode *dir, struct dentry *dentry)
{
 struct ubifs_info *c = dir->i_sb->s_fs_info;
 struct inode *inode = dentry->d_inode;
 struct ubifs_inode *dir_ui = ubifs_inode(dir);
 int sz_change = CALC_DENT_SIZE(dentry->d_name.len);
 int err, budgeted = 1;
 struct ubifs_budget_req req = { .mod_dent = 1, .dirtied_ino = 2 };
 dbg_gen("dent '%.*s' from ino %lu (nlink %d) in dir ino %lu",
  dentry->d_name.len, dentry->d_name.name, inode->i_ino,
  inode->i_nlink, dir->i_ino);
 ubifs_assert(mutex_is_locked(&dir->i_mutex));
 ubifs_assert(mutex_is_locked(&inode->i_mutex));
 err = dbg_check_synced_i_size(inode);
 if (err)
  return err;

 err = ubifs_budget_space(c, &req);
 if (err) {
  if (err != -ENOSPC)
   return err;
  budgeted = 0;
 }

 lock_2_inodes(dir, inode);
 inode->i_ctime = ubifs_current_time(dir);
 drop_nlink(inode);
 dir->i_size -= sz_change;
 dir_ui->ui_size = dir->i_size;
 dir->i_mtime = dir->i_ctime = inode->i_ctime;
 err = ubifs_jnl_update(c, dir, &dentry->d_name, inode, 1, 0);
 if (err)
  goto out_cancel;
 unlock_2_inodes(dir, inode);

 if (budgeted)
  ubifs_release_budget(c, &req);
 else {

  c->nospace = c->nospace_rp = 0;
  smp_wmb();
 }
 return 0;

out_cancel:
 dir->i_size += sz_change;
 dir_ui->ui_size = dir->i_size;
 inc_nlink(inode);
 unlock_2_inodes(dir, inode);
 if (budgeted)
  ubifs_release_budget(c, &req);
 return err;
}
