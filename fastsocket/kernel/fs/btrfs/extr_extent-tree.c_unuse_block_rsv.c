
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_rsv {int dummy; } ;


 int block_rsv_add_bytes (struct btrfs_block_rsv*,int ,int ) ;
 int block_rsv_release_bytes (struct btrfs_fs_info*,struct btrfs_block_rsv*,int *,int ) ;

__attribute__((used)) static void unuse_block_rsv(struct btrfs_fs_info *fs_info,
       struct btrfs_block_rsv *block_rsv, u32 blocksize)
{
 block_rsv_add_bytes(block_rsv, blocksize, 0);
 block_rsv_release_bytes(fs_info, block_rsv, ((void*)0), 0);
}
