
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u16 ;
struct compressed_bio {int dummy; } ;
struct btrfs_root {unsigned long sectorsize; TYPE_1__* fs_info; } ;
struct TYPE_2__ {int super_copy; } ;


 unsigned long btrfs_super_csum_size (int ) ;

__attribute__((used)) static inline int compressed_bio_size(struct btrfs_root *root,
          unsigned long disk_size)
{
 u16 csum_size = btrfs_super_csum_size(root->fs_info->super_copy);

 return sizeof(struct compressed_bio) +
  ((disk_size + root->sectorsize - 1) / root->sectorsize) *
  csum_size;
}
