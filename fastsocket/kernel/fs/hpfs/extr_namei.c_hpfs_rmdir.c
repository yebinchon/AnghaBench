
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct quad_buffer_head {int dummy; } ;
struct inode {int i_sb; } ;
struct hpfs_dirent {int fnode; int directory; scalar_t__ first; } ;
struct TYPE_3__ {char* name; unsigned int len; } ;
struct dentry {struct inode* d_inode; TYPE_1__ d_name; } ;
typedef int fnode_secno ;
typedef int dnode_secno ;
struct TYPE_4__ {int i_parent_mutex; int i_mutex; int i_dno; } ;


 int EFSERROR ;
 int ENOENT ;
 int ENOSPC ;
 int ENOTDIR ;
 int ENOTEMPTY ;
 int EPERM ;
 int clear_nlink (struct inode*) ;
 int drop_nlink (struct inode*) ;
 int hpfs_adjust_length (char*,unsigned int*) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_count_dnodes (int ,int ,int *,int *,int*) ;
 int hpfs_error (int ,char*) ;
 TYPE_2__* hpfs_i (struct inode*) ;
 int hpfs_remove_dirent (struct inode*,int ,struct hpfs_dirent*,struct quad_buffer_head*,int) ;
 int lock_kernel () ;
 struct hpfs_dirent* map_dirent (struct inode*,int ,char*,unsigned int,int *,struct quad_buffer_head*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unlock_kernel () ;

__attribute__((used)) static int hpfs_rmdir(struct inode *dir, struct dentry *dentry)
{
 const char *name = dentry->d_name.name;
 unsigned len = dentry->d_name.len;
 struct quad_buffer_head qbh;
 struct hpfs_dirent *de;
 struct inode *inode = dentry->d_inode;
 dnode_secno dno;
 fnode_secno fno;
 int n_items = 0;
 int err;
 int r;

 hpfs_adjust_length((char *)name, &len);
 lock_kernel();
 mutex_lock(&hpfs_i(inode)->i_parent_mutex);
 mutex_lock(&hpfs_i(dir)->i_mutex);
 err = -ENOENT;
 de = map_dirent(dir, hpfs_i(dir)->i_dno, (char *)name, len, &dno, &qbh);
 if (!de)
  goto out;

 err = -EPERM;
 if (de->first)
  goto out1;

 err = -ENOTDIR;
 if (!de->directory)
  goto out1;

 hpfs_count_dnodes(dir->i_sb, hpfs_i(inode)->i_dno, ((void*)0), ((void*)0), &n_items);
 err = -ENOTEMPTY;
 if (n_items)
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
  break;
 default:
  drop_nlink(dir);
  clear_nlink(inode);
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
