
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int udf_inode_cachep ;

__attribute__((used)) static void destroy_inodecache(void)
{
 kmem_cache_destroy(udf_inode_cachep);
}
