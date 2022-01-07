
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_inode {int dirty; int ui_mutex; int flags; int data_len; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_budget_req {int dirtied_ino; int dirtied_ino_d; } ;
struct inode {int i_ino; int i_ctime; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;


 int CAP_LINUX_IMMUTABLE ;
 int EPERM ;
 int FS_APPEND_FL ;
 int FS_IMMUTABLE_FL ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int capable (int ) ;
 int ioctl2ubifs (int) ;
 int mark_inode_dirty_sync (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ubifs2ioctl (int ) ;
 int ubifs_budget_space (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_current_time (struct inode*) ;
 int ubifs_err (char*,int ) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;
 int ubifs_release_budget (struct ubifs_info*,struct ubifs_budget_req*) ;
 int ubifs_set_inode_flags (struct inode*) ;
 int write_inode_now (struct inode*,int) ;

__attribute__((used)) static int setflags(struct inode *inode, int flags)
{
 int oldflags, err, release;
 struct ubifs_inode *ui = ubifs_inode(inode);
 struct ubifs_info *c = inode->i_sb->s_fs_info;
 struct ubifs_budget_req req = { .dirtied_ino = 1,
     .dirtied_ino_d = ui->data_len };

 err = ubifs_budget_space(c, &req);
 if (err)
  return err;





 mutex_lock(&ui->ui_mutex);
 oldflags = ubifs2ioctl(ui->flags);
 if ((flags ^ oldflags) & (FS_APPEND_FL | FS_IMMUTABLE_FL)) {
  if (!capable(CAP_LINUX_IMMUTABLE)) {
   err = -EPERM;
   goto out_unlock;
  }
 }

 ui->flags = ioctl2ubifs(flags);
 ubifs_set_inode_flags(inode);
 inode->i_ctime = ubifs_current_time(inode);
 release = ui->dirty;
 mark_inode_dirty_sync(inode);
 mutex_unlock(&ui->ui_mutex);

 if (release)
  ubifs_release_budget(c, &req);
 if (IS_SYNC(inode))
  err = write_inode_now(inode, 1);
 return err;

out_unlock:
 ubifs_err("can't modify inode %lu attributes", inode->i_ino);
 mutex_unlock(&ui->ui_mutex);
 ubifs_release_budget(c, &req);
 return err;
}
