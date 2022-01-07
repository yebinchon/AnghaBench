
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btrfs_root {int nodesize; int leafsize; } ;



__attribute__((used)) static inline u32 btrfs_level_size(struct btrfs_root *root, int level)
{
 if (level == 0)
  return root->leafsize;
 return root->nodesize;
}
