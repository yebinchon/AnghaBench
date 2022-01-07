
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {int leafsize; int nodesize; } ;


 int BTRFS_MAX_LEVEL ;

__attribute__((used)) static inline u64 btrfs_calc_trunc_metadata_size(struct btrfs_root *root,
       unsigned num_items)
{
 return (root->leafsize + root->nodesize * (BTRFS_MAX_LEVEL - 1)) *
  num_items;
}
