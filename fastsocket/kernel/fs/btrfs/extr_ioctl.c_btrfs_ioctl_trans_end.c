
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_5__ {int mnt; } ;
struct file {TYPE_1__ f_path; struct btrfs_trans_handle* private_data; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct TYPE_8__ {struct btrfs_root* root; } ;
struct TYPE_7__ {struct inode* d_inode; } ;
struct TYPE_6__ {int open_ioctl_trans; } ;


 TYPE_4__* BTRFS_I (struct inode*) ;
 long EINVAL ;
 int atomic_dec (int *) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*,struct btrfs_root*) ;
 TYPE_3__* fdentry (struct file*) ;
 int mnt_drop_write (int ) ;

long btrfs_ioctl_trans_end(struct file *file)
{
 struct inode *inode = fdentry(file)->d_inode;
 struct btrfs_root *root = BTRFS_I(inode)->root;
 struct btrfs_trans_handle *trans;

 trans = file->private_data;
 if (!trans)
  return -EINVAL;
 file->private_data = ((void*)0);

 btrfs_end_transaction(trans, root);

 atomic_dec(&root->fs_info->open_ioctl_trans);

 mnt_drop_write(file->f_path.mnt);
 return 0;
}
