
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_inode_info {int dummy; } ;


 int ENOMEM ;
 int SLAB_RECLAIM_ACCOUNT ;
 int init_once ;
 int * kmem_cache_create (char*,int,int ,int ,int ) ;
 int * nilfs_inode_cachep ;

__attribute__((used)) static int nilfs_init_inode_cache(void)
{
 nilfs_inode_cachep = kmem_cache_create("nilfs2_inode_cache",
            sizeof(struct nilfs_inode_info),
            0, SLAB_RECLAIM_ACCOUNT,
            init_once);

 return (nilfs_inode_cachep == ((void*)0)) ? -ENOMEM : 0;
}
