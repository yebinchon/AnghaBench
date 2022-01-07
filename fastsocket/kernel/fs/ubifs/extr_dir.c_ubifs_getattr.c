
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct ubifs_inode {int ui_size; int xattr_size; int ui_mutex; } ;
struct kstat {int size; int blocks; int blksize; int ctime; int mtime; int atime; int rdev; int gid; int uid; int nlink; int mode; int ino; int dev; } ;
struct inode {int i_mode; int i_ctime; int i_mtime; int i_atime; int i_rdev; int i_gid; int i_uid; int i_nlink; int i_ino; TYPE_1__* i_sb; } ;
struct dentry {struct inode* d_inode; } ;
typedef int loff_t ;
struct TYPE_2__ {int s_dev; } ;


 int ALIGN (int,int ) ;
 scalar_t__ S_ISREG (int ) ;
 int UBIFS_BLOCK_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;

int ubifs_getattr(struct vfsmount *mnt, struct dentry *dentry,
    struct kstat *stat)
{
 loff_t size;
 struct inode *inode = dentry->d_inode;
 struct ubifs_inode *ui = ubifs_inode(inode);

 mutex_lock(&ui->ui_mutex);
 stat->dev = inode->i_sb->s_dev;
 stat->ino = inode->i_ino;
 stat->mode = inode->i_mode;
 stat->nlink = inode->i_nlink;
 stat->uid = inode->i_uid;
 stat->gid = inode->i_gid;
 stat->rdev = inode->i_rdev;
 stat->atime = inode->i_atime;
 stat->mtime = inode->i_mtime;
 stat->ctime = inode->i_ctime;
 stat->blksize = UBIFS_BLOCK_SIZE;
 stat->size = ui->ui_size;
 if (S_ISREG(inode->i_mode)) {
  size = ui->xattr_size;
  size += stat->size;
  size = ALIGN(size, UBIFS_BLOCK_SIZE);




  stat->blocks = size >> 9;
 } else
  stat->blocks = 0;
 mutex_unlock(&ui->ui_mutex);
 return 0;
}
