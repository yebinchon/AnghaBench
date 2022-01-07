
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_node {int policy; int nd; int end; int start; } ;
struct shared_policy {int root; } ;


 int kmem_cache_free (int ,struct sp_node*) ;
 int mpol_put (int ) ;
 int pr_debug (char*,int ,int ) ;
 int rb_erase (int *,int *) ;
 int sn_cache ;

__attribute__((used)) static void sp_delete(struct shared_policy *sp, struct sp_node *n)
{
 pr_debug("deleting %lx-l%lx\n", n->start, n->end);
 rb_erase(&n->nd, &sp->root);
 mpol_put(n->policy);
 kmem_cache_free(sn_cache, n);
}
