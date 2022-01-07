
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_cpu {int node; } ;



__attribute__((used)) static inline int node_match(struct kmem_cache_cpu *c, int node)
{




 return 1;
}
