
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct quad_buffer_head {int dummy; } ;
struct inode {int i_mode; int i_sb; } ;
struct iattr {int ia_valid; int ia_size; } ;
struct hpfs_dirent {int fnode; scalar_t__ directory; scalar_t__ first; } ;
struct TYPE_3__ {char* name; unsigned int len; } ;
struct dentry {int d_lock; int d_count; struct inode* d_inode; TYPE_1__ d_name; } ;
typedef int fnode_secno ;
typedef int dnode_secno ;
struct TYPE_4__ {int i_parent_mutex; int i_mutex; int i_dno; } ;


 int ATTR_CTIME ;
 int ATTR_SIZE ;
 int EFSERROR ;
 int EISDIR ;
 int ENOENT ;
 int ENOSPC ;
 int EPERM ;
 int MAY_WRITE ;
 int S_ISREG (int ) ;
 int atomic_read (int *) ;
 int d_drop (struct dentry*) ;
 int d_rehash (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 int generic_permission (struct inode*,int ,int *) ;
 int get_write_access (struct inode*) ;
 int hpfs_adjust_length (char*,unsigned int*) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_error (int ,char*) ;
 TYPE_2__* hpfs_i (struct inode*) ;
 int hpfs_remove_dirent (struct inode*,int ,struct hpfs_dirent*,struct quad_buffer_head*,int) ;
 int lock_kernel () ;
 struct hpfs_dirent* map_dirent (struct inode*,int ,char*,unsigned int,int *,struct quad_buffer_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int notify_change (struct dentry*,struct iattr*) ;
 int put_write_access (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_kernel () ;

__attribute__((used)) static int hpfs_unlink(struct inode *dir, struct dentry *dentry)
{
 const char *name = dentry->d_name.name;
 unsigned len = dentry->d_name.len;
 struct quad_buffer_head qbh;
 struct hpfs_dirent *de;
 struct inode *inode = dentry->d_inode;
 dnode_secno dno;
 fnode_secno fno;
 int r;
 int rep = 0;
 int err;

 lock_kernel();
 hpfs_adjust_length((char *)name, &len);
again:
 mutex_lock(&hpfs_i(inode)->i_parent_mutex);
 mutex_lock(&hpfs_i(dir)->i_mutex);
 err = -ENOENT;
 de = map_dirent(dir, hpfs_i(dir)->i_dno, (char *)name, len, &dno, &qbh);
 if (!de)
  goto out;

 err = -EPERM;
 if (de->first)
  goto out1;

 err = -EISDIR;
 if (de->directory)
  goto out1;

 fno = de->fnode;
 r = hpfs_remove_dirent(dir, dno, de, &qbh, 1);
 switch (r) {
 case 1:
  hpfs_error(dir->i_sb, "there was error when removing dirent");
  err = -EFSERROR;
  break;
 case 2:

  err = -ENOSPC;
  if (rep++)
   break;

  mutex_unlock(&hpfs_i(dir)->i_mutex);
  mutex_unlock(&hpfs_i(inode)->i_parent_mutex);
  d_drop(dentry);
  spin_lock(&dentry->d_lock);
  if (atomic_read(&dentry->d_count) > 1 ||
      generic_permission(inode, MAY_WRITE, ((void*)0)) ||
      !S_ISREG(inode->i_mode) ||
      get_write_access(inode)) {
   spin_unlock(&dentry->d_lock);
   d_rehash(dentry);
  } else {
   struct iattr newattrs;
   spin_unlock(&dentry->d_lock);

   newattrs.ia_size = 0;
   newattrs.ia_valid = ATTR_SIZE | ATTR_CTIME;
   err = notify_change(dentry, &newattrs);
   put_write_access(inode);
   if (!err)
    goto again;
  }
  unlock_kernel();
  return -ENOSPC;
 default:
  drop_nlink(inode);
  err = 0;
 }
 goto out;

out1:
 hpfs_brelse4(&qbh);
out:
 mutex_unlock(&hpfs_i(dir)->i_mutex);
 mutex_unlock(&hpfs_i(inode)->i_parent_mutex);
 unlock_kernel();
 return err;
}
