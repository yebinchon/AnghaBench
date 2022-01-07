
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct kmem_cache_node {int list_lock; int nr_partial; } ;
struct kmem_cache {int dummy; } ;


 struct kmem_cache_node* get_node (struct kmem_cache*,int ) ;
 int list_del (int *) ;
 int page_to_nid (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void remove_partial(struct kmem_cache *s, struct page *page)
{
 struct kmem_cache_node *n = get_node(s, page_to_nid(page));

 spin_lock(&n->list_lock);
 list_del(&page->lru);
 n->nr_partial--;
 spin_unlock(&n->list_lock);
}
