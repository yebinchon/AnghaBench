
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_node {int dummy; } ;


 int fib6_node_kmem ;
 int kmem_cache_free (int ,struct fib6_node*) ;

__attribute__((used)) static __inline__ void node_free(struct fib6_node * fn)
{
 kmem_cache_free(fib6_node_kmem, fn);
}
