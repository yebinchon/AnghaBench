
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_alias {int * fa_info; } ;
struct fib_node {struct fib_alias fn_embedded_alias; } ;


 int fib_release_info (int *) ;
 int fn_alias_kmem ;
 int kmem_cache_free (int ,struct fib_alias*) ;

__attribute__((used)) static inline void fn_free_alias(struct fib_alias *fa, struct fib_node *f)
{
 fib_release_info(fa->fa_info);
 if (fa == &f->fn_embedded_alias)
  fa->fa_info = ((void*)0);
 else
  kmem_cache_free(fn_alias_kmem, fa);
}
