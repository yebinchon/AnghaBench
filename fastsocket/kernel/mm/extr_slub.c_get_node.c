
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_node {int dummy; } ;
struct kmem_cache {struct kmem_cache_node local_node; struct kmem_cache_node** node; } ;



__attribute__((used)) static inline struct kmem_cache_node *get_node(struct kmem_cache *s, int node)
{



 return &s->local_node;

}
