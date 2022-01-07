
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct ubifs_inode {int ui_mutex; scalar_t__ dirty; int ui_size; int xattr; } ;
struct ubifs_info {int dummy; } ;
struct inode {int i_ino; scalar_t__ i_nlink; scalar_t__ i_mode; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;


 int dbg_check_inode_size (struct ubifs_info*,struct inode*,int ) ;
 int dbg_gen (char*,int ,int,scalar_t__) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubifs_assert (int) ;
 int ubifs_err (char*,int ,int) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_jnl_write_inode (struct ubifs_info*,struct inode*) ;
 int ubifs_release_dirty_inode_budget (struct ubifs_info*,struct ubifs_inode*) ;

__attribute__((used)) static int ubifs_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 int err = 0;
 struct ubifs_info *c = inode->i_sb->s_fs_info;
 struct ubifs_inode *ui = ubifs_inode(inode);

 ubifs_assert(!ui->xattr);
 if (is_bad_inode(inode))
  return 0;

 mutex_lock(&ui->ui_mutex);







 if (!ui->dirty) {
  mutex_unlock(&ui->ui_mutex);
  return 0;
 }





 dbg_gen("inode %lu, mode %#x, nlink %u",
  inode->i_ino, (int)inode->i_mode, inode->i_nlink);
 if (inode->i_nlink) {
  err = ubifs_jnl_write_inode(c, inode);
  if (err)
   ubifs_err("can't write inode %lu, error %d",
      inode->i_ino, err);
  else
   err = dbg_check_inode_size(c, inode, ui->ui_size);
 }

 ui->dirty = 0;
 mutex_unlock(&ui->ui_mutex);
 ubifs_release_dirty_inode_budget(c, ui);
 return err;
}
