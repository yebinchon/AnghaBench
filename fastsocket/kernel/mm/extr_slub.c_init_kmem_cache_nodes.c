
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int local_node; } ;
typedef int gfp_t ;


 int init_kmem_cache_node (int *,struct kmem_cache*) ;

__attribute__((used)) static int init_kmem_cache_nodes(struct kmem_cache *s, gfp_t gfpflags)
{
 init_kmem_cache_node(&s->local_node, s);
 return 1;
}
