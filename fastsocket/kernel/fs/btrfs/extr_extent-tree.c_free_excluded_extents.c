
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct TYPE_3__ {scalar_t__ offset; scalar_t__ objectid; } ;
struct btrfs_block_group_cache {TYPE_1__ key; } ;
struct TYPE_4__ {int * freed_extents; } ;


 int EXTENT_UPTODATE ;
 int GFP_NOFS ;
 int clear_extent_bits (int *,scalar_t__,scalar_t__,int ,int ) ;

__attribute__((used)) static void free_excluded_extents(struct btrfs_root *root,
      struct btrfs_block_group_cache *cache)
{
 u64 start, end;

 start = cache->key.objectid;
 end = start + cache->key.offset - 1;

 clear_extent_bits(&root->fs_info->freed_extents[0],
     start, end, EXTENT_UPTODATE, GFP_NOFS);
 clear_extent_bits(&root->fs_info->freed_extents[1],
     start, end, EXTENT_UPTODATE, GFP_NOFS);
}
