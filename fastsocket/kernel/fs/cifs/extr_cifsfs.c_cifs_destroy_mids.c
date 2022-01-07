
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cifs_mid_cachep ;
 int cifs_mid_poolp ;
 int kmem_cache_destroy (int ) ;
 int mempool_destroy (int ) ;

__attribute__((used)) static void
cifs_destroy_mids(void)
{
 mempool_destroy(cifs_mid_poolp);
 kmem_cache_destroy(cifs_mid_cachep);
}
