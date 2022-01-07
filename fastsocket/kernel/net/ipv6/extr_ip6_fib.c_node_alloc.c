
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_node {int dummy; } ;


 int GFP_ATOMIC ;
 int fib6_node_kmem ;
 struct fib6_node* kmem_cache_zalloc (int ,int ) ;

__attribute__((used)) static __inline__ struct fib6_node * node_alloc(void)
{
 struct fib6_node *fn;

 fn = kmem_cache_zalloc(fib6_node_kmem, GFP_ATOMIC);

 return fn;
}
