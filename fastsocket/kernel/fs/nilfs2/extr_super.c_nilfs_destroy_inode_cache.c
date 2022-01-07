
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int nilfs_inode_cachep ;

__attribute__((used)) static inline void nilfs_destroy_inode_cache(void)
{
 kmem_cache_destroy(nilfs_inode_cachep);
}
