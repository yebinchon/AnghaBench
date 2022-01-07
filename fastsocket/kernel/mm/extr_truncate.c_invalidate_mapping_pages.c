
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {scalar_t__ index; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ pgoff_t ;


 scalar_t__ PAGEVEC_SIZE ;
 int WARN_ON (int) ;
 int cond_resched () ;
 int deactivate_page (struct page*) ;
 unsigned long invalidate_inode_page (struct page*) ;
 int mem_cgroup_uncharge_end () ;
 int mem_cgroup_uncharge_start () ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*,int ) ;
 scalar_t__ pagevec_lookup (struct pagevec*,struct address_space*,scalar_t__,scalar_t__) ;
 int pagevec_release (struct pagevec*) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

unsigned long invalidate_mapping_pages(struct address_space *mapping,
  pgoff_t start, pgoff_t end)
{
 struct pagevec pvec;
 pgoff_t index = start;
 unsigned long ret;
 unsigned long count = 0;
 int i;
 pagevec_init(&pvec, 0);
 while (index <= end && pagevec_lookup(&pvec, mapping, index,
   min(end - index, (pgoff_t)PAGEVEC_SIZE - 1) + 1)) {
  mem_cgroup_uncharge_start();
  for (i = 0; i < pagevec_count(&pvec); i++) {
   struct page *page = pvec.pages[i];


   index = page->index;
   if (index > end)
    break;

   if (!trylock_page(page))
    continue;
   WARN_ON(page->index != index);
   ret = invalidate_inode_page(page);
   unlock_page(page);




   if (!ret)
    deactivate_page(page);
   count += ret;
  }
  pagevec_release(&pvec);
  mem_cgroup_uncharge_end();
  cond_resched();
  index++;
 }
 return count;
}
