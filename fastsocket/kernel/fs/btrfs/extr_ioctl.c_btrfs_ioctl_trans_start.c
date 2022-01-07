
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_6__ {int mnt; } ;
struct file {TYPE_2__ f_path; struct btrfs_trans_handle* private_data; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_8__ {struct btrfs_root* root; } ;
struct TYPE_7__ {struct inode* d_inode; } ;
struct TYPE_5__ {int open_ioctl_trans; } ;


 TYPE_4__* BTRFS_I (struct inode*) ;
 int CAP_SYS_ADMIN ;
 int EINPROGRESS ;
 int ENOMEM ;
 int EPERM ;
 int EROFS ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ btrfs_root_readonly (struct btrfs_root*) ;
 struct btrfs_trans_handle* btrfs_start_ioctl_transaction (struct btrfs_root*) ;
 int capable (int ) ;
 TYPE_3__* fdentry (struct file*) ;
 int mnt_drop_write (int ) ;
 int mnt_want_write (int ) ;

__attribute__((used)) static long btrfs_ioctl_trans_start(struct file *file)
{
 struct inode *inode = fdentry(file)->d_inode;
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_trans_handle *trans;
 int ret;

 ret = -EPERM;
 if (!capable(CAP_SYS_ADMIN))
  goto out;

 ret = -EINPROGRESS;
 if (file->private_data)
  goto out;

 ret = -EROFS;
 if (btrfs_root_readonly(root))
  goto out;

 ret = mnt_want_write(file->f_path.mnt);
 if (ret)
  goto out;

 atomic_inc(&root->fs_info->open_ioctl_trans);

 ret = -ENOMEM;
 trans = btrfs_start_ioctl_transaction(root);
 if (IS_ERR(trans))
  goto out_drop;

 file->private_data = trans;
 return 0;

out_drop:
 atomic_dec(&root->fs_info->open_ioctl_trans);
 mnt_drop_write(file->f_path.mnt);
out:
 return ret;
}
