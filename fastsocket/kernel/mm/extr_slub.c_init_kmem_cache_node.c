
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_node {int full; int total_objects; int nr_slabs; int partial; int list_lock; scalar_t__ nr_partial; } ;
struct kmem_cache {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_long_set (int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void
init_kmem_cache_node(struct kmem_cache_node *n, struct kmem_cache *s)
{
 n->nr_partial = 0;
 spin_lock_init(&n->list_lock);
 INIT_LIST_HEAD(&n->partial);





}
