
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_node {int dummy; } ;


 int fn_hash_kmem ;
 int kmem_cache_free (int ,struct fib_node*) ;

__attribute__((used)) static inline void fn_free_node(struct fib_node * f)
{
 kmem_cache_free(fn_hash_kmem, f);
}
