
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ext2_inode_cachep ;
 int kmem_cache_destroy (int ) ;

__attribute__((used)) static void destroy_inodecache(void)
{
 kmem_cache_destroy(ext2_inode_cachep);
}
