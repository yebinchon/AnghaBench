
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;


 int TRANS_USERSPACE ;
 struct btrfs_trans_handle* start_transaction (struct btrfs_root*,int ,int ) ;

struct btrfs_trans_handle *btrfs_start_ioctl_transaction(struct btrfs_root *root)
{
 return start_transaction(root, 0, TRANS_USERSPACE);
}
