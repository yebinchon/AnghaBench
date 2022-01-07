
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_path {int dummy; } ;


 int GFP_NOFS ;
 int btrfs_path_cachep ;
 struct btrfs_path* kmem_cache_zalloc (int ,int ) ;

struct btrfs_path *btrfs_alloc_path(void)
{
 struct btrfs_path *path;
 path = kmem_cache_zalloc(btrfs_path_cachep, GFP_NOFS);
 return path;
}
