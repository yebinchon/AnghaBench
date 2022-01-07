
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {int dummy; } ;


 int btrfs_discard_extent (struct btrfs_root*,int ,int ,int *) ;

int btrfs_error_discard_extent(struct btrfs_root *root, u64 bytenr,
          u64 num_bytes, u64 *actual_bytes)
{
 return btrfs_discard_extent(root, bytenr, num_bytes, actual_bytes);
}
