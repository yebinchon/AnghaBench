
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_fib_node {int dummy; } ;


 int DN_FIB_INFO (struct dn_fib_node*) ;
 int dn_fib_release_info (int ) ;
 int dn_hash_kmem ;
 int kmem_cache_free (int ,struct dn_fib_node*) ;

__attribute__((used)) static void dn_free_node(struct dn_fib_node *f)
{
 dn_fib_release_info(DN_FIB_INFO(f));
 kmem_cache_free(dn_hash_kmem, f);
}
