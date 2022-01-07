
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avtab_node_cachep ;
 int kmem_cache_destroy (int ) ;

void avtab_cache_destroy(void)
{
 kmem_cache_destroy(avtab_node_cachep);
}
