
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;
struct page {int lru; } ;
struct kmem_cache {int flags; } ;


 int SLAB_DESTROY_BY_RCU ;
 int __free_slab (struct kmem_cache*,struct page*) ;
 int call_rcu (struct rcu_head*,int ) ;
 int rcu_free_slab ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void free_slab(struct kmem_cache *s, struct page *page)
{
 if (unlikely(s->flags & SLAB_DESTROY_BY_RCU)) {



  struct rcu_head *head = (void *)&page->lru;

  call_rcu(head, rcu_free_slab);
 } else
  __free_slab(s, page);
}
