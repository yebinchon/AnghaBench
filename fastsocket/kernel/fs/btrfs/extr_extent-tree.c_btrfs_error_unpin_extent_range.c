
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {int dummy; } ;


 int unpin_extent_range (struct btrfs_root*,int ,int ) ;

int btrfs_error_unpin_extent_range(struct btrfs_root *root, u64 start, u64 end)
{
 return unpin_extent_range(root, start, end);
}
