
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {int * freed_extents; } ;


 int EXTENT_UPTODATE ;
 int GFP_NOFS ;
 int set_extent_bits (int *,scalar_t__,scalar_t__,int ,int ) ;

__attribute__((used)) static int add_excluded_extent(struct btrfs_root *root,
          u64 start, u64 num_bytes)
{
 u64 end = start + num_bytes - 1;
 set_extent_bits(&root->fs_info->freed_extents[0],
   start, end, EXTENT_UPTODATE, GFP_NOFS);
 set_extent_bits(&root->fs_info->freed_extents[1],
   start, end, EXTENT_UPTODATE, GFP_NOFS);
 return 0;
}
