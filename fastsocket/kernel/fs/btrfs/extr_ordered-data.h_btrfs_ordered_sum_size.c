
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_sector_sum {int dummy; } ;
struct btrfs_root {unsigned long sectorsize; } ;
struct btrfs_ordered_sum {int dummy; } ;



__attribute__((used)) static inline int btrfs_ordered_sum_size(struct btrfs_root *root,
      unsigned long bytes)
{
 unsigned long num_sectors = (bytes + root->sectorsize - 1) /
  root->sectorsize;
 num_sectors++;
 return sizeof(struct btrfs_ordered_sum) +
  num_sectors * sizeof(struct btrfs_sector_sum);
}
