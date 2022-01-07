
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct avtab_node {int dummy; } ;


 int SLAB_PANIC ;
 int avtab_node_cachep ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;

void avtab_cache_init(void)
{
 avtab_node_cachep = kmem_cache_create("avtab_node",
           sizeof(struct avtab_node),
           0, SLAB_PANIC, ((void*)0));
}
