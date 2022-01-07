
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void page ;
struct address_space {int page_tree; } ;
typedef unsigned int pgoff_t ;


 int WARN_ON (unsigned int) ;
 int page_cache_get_speculative (void*) ;
 int page_cache_release (void*) ;
 scalar_t__ radix_tree_deref_retry (void*) ;
 void* radix_tree_deref_slot (void**) ;
 scalar_t__ radix_tree_exception (void*) ;
 unsigned int radix_tree_gang_lookup_slot (int *,void***,int *,unsigned int,unsigned int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

unsigned find_get_pages(struct address_space *mapping, pgoff_t start,
       unsigned int nr_pages, struct page **pages)
{
 unsigned int i;
 unsigned int ret;
 unsigned int nr_found;

 rcu_read_lock();
restart:
 nr_found = radix_tree_gang_lookup_slot(&mapping->page_tree,
    (void ***)pages, ((void*)0), start, nr_pages);
 ret = 0;
 for (i = 0; i < nr_found; i++) {
  struct page *page;
repeat:
  page = radix_tree_deref_slot((void **)pages[i]);
  if (unlikely(!page))
   continue;

  if (radix_tree_exception(page)) {
   if (radix_tree_deref_retry(page)) {





    WARN_ON(start | i);
    goto restart;
   }





   continue;
  }

  if (!page_cache_get_speculative(page))
   goto repeat;


  if (unlikely(page != *((void **)pages[i]))) {
   page_cache_release(page);
   goto repeat;
  }

  pages[ret] = page;
  ret++;
 }
 rcu_read_unlock();
 return ret;
}
