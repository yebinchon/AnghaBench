
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {int dummy; } ;


 int __btrfs_free_reserved_extent (struct btrfs_root*,int ,int ,int ) ;

int btrfs_free_reserved_extent(struct btrfs_root *root,
     u64 start, u64 len)
{
 return __btrfs_free_reserved_extent(root, start, len, 0);
}
