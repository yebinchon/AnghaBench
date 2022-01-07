
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {int open_ioctl_trans; scalar_t__ log_root_recovering; } ;


 int TRANS_START ;
 int TRANS_USERSPACE ;
 int atomic_read (int *) ;

__attribute__((used)) static int may_wait_transaction(struct btrfs_root *root, int type)
{
 if (root->fs_info->log_root_recovering)
  return 0;

 if (type == TRANS_USERSPACE)
  return 1;

 if (type == TRANS_START &&
     !atomic_read(&root->fs_info->open_ioctl_trans))
  return 1;

 return 0;
}
