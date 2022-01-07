
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct kmem_cache_node {int list_lock; int partial; int nr_partial; } ;


 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void add_partial(struct kmem_cache_node *n,
    struct page *page, int tail)
{
 spin_lock(&n->list_lock);
 n->nr_partial++;
 if (tail)
  list_add_tail(&page->lru, &n->partial);
 else
  list_add(&page->lru, &n->partial);
 spin_unlock(&n->list_lock);
}
