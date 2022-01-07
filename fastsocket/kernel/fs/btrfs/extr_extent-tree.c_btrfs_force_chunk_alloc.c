
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;


 int CHUNK_ALLOC_FORCE ;
 int do_chunk_alloc (struct btrfs_trans_handle*,struct btrfs_root*,int,int ,int ) ;
 int get_alloc_profile (struct btrfs_root*,int ) ;

int btrfs_force_chunk_alloc(struct btrfs_trans_handle *trans,
       struct btrfs_root *root, u64 type)
{
 u64 alloc_flags = get_alloc_profile(root, type);
 return do_chunk_alloc(trans, root, 2 * 1024 * 1024, alloc_flags,
         CHUNK_ALLOC_FORCE);
}
