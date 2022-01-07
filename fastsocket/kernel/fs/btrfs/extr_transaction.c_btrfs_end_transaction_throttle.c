
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;


 int __btrfs_end_transaction (struct btrfs_trans_handle*,struct btrfs_root*,int,int) ;

int btrfs_end_transaction_throttle(struct btrfs_trans_handle *trans,
       struct btrfs_root *root)
{
 int ret;

 ret = __btrfs_end_transaction(trans, root, 1, 1);
 if (ret)
  return ret;
 return 0;
}
