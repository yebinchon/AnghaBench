
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void page ;
struct address_space {int page_tree; } ;
typedef int pgoff_t ;


 int page_cache_get_speculative (void*) ;
 int page_cache_release (void*) ;
 scalar_t__ radix_tree_deref_retry (void*) ;
 void* radix_tree_deref_slot (void**) ;
 scalar_t__ radix_tree_exception (void*) ;
 void** radix_tree_lookup_slot (int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

struct page *find_get_page(struct address_space *mapping, pgoff_t offset)
{
 void **pagep;
 struct page *page;

 rcu_read_lock();
repeat:
 page = ((void*)0);
 pagep = radix_tree_lookup_slot(&mapping->page_tree, offset);
 if (pagep) {
  page = radix_tree_deref_slot(pagep);
  if (unlikely(!page))
   goto out;
  if (radix_tree_exception(page)) {
   if (radix_tree_deref_retry(page))
    goto repeat;





   goto out;
  }
  if (!page_cache_get_speculative(page))
   goto repeat;






  if (unlikely(page != *pagep)) {
   page_cache_release(page);
   goto repeat;
  }
 }
out:
 rcu_read_unlock();

 return page;
}
