
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct map_lookup {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {struct btrfs_root* chunk_root; } ;


 int BTRFS_FIRST_CHUNK_TREE_OBJECTID ;
 int __btrfs_alloc_chunk (struct btrfs_trans_handle*,struct btrfs_root*,struct map_lookup**,int *,int *,int ,int ) ;
 int __finish_chunk_alloc (struct btrfs_trans_handle*,struct btrfs_root*,struct map_lookup*,int ,int ,int ) ;
 int find_next_chunk (struct btrfs_root*,int ,int *) ;

int btrfs_alloc_chunk(struct btrfs_trans_handle *trans,
        struct btrfs_root *extent_root, u64 type)
{
 u64 chunk_offset;
 u64 chunk_size;
 u64 stripe_size;
 struct map_lookup *map;
 struct btrfs_root *chunk_root = extent_root->fs_info->chunk_root;
 int ret;

 ret = find_next_chunk(chunk_root, BTRFS_FIRST_CHUNK_TREE_OBJECTID,
         &chunk_offset);
 if (ret)
  return ret;

 ret = __btrfs_alloc_chunk(trans, extent_root, &map, &chunk_size,
      &stripe_size, chunk_offset, type);
 if (ret)
  return ret;

 ret = __finish_chunk_alloc(trans, extent_root, map, chunk_offset,
       chunk_size, stripe_size);
 if (ret)
  return ret;
 return 0;
}
