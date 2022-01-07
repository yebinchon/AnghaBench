
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int coda_inode_cachep ;
 int kmem_cache_destroy (int ) ;

void coda_destroy_inodecache(void)
{
 kmem_cache_destroy(coda_inode_cachep);
}
