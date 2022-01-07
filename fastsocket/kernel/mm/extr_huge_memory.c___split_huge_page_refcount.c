
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int lru_lock; } ;
struct page {int flags; int mapping; int _count; scalar_t__ index; int _mapcount; } ;


 int BUG_ON (int) ;
 int ClearPageCompound (struct page*) ;
 int HPAGE_PMD_NR ;
 int NR_ANON_PAGES ;
 int NR_ANON_TRANSPARENT_HUGEPAGES ;
 int PAGE_FLAGS_CHECK_AT_PREP ;
 long PG_dirty ;
 long PG_mlocked ;
 long PG_referenced ;
 long PG_swapbacked ;
 long PG_uptodate ;
 int PageAnon (struct page*) ;
 int PageDirty (struct page*) ;
 int PageSwapBacked (struct page*) ;
 int PageUptodate (struct page*) ;
 int __PG_HWPOISON ;
 int __dec_zone_page_state (struct page*,int ) ;
 int __mod_zone_page_state (struct zone*,int ,int) ;
 int atomic_add (scalar_t__,int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int compound_lock (struct page*) ;
 int compound_unlock (struct page*) ;
 int lru_add_page_tail (struct zone*,struct page*,struct page*) ;
 int mem_cgroup_split_hugepage_commit (struct page*,struct page*) ;
 scalar_t__ page_count (struct page*) ;
 scalar_t__ page_mapcount (struct page*) ;
 struct zone* page_zone (struct page*) ;
 int put_page (struct page*) ;
 int smp_mb () ;
 int smp_wmb () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void __split_huge_page_refcount(struct page *page)
{
 int i;
 struct zone *zone = page_zone(page);
 int tail_count = 0;


 spin_lock_irq(&zone->lru_lock);
 compound_lock(page);

 for (i = HPAGE_PMD_NR - 1; i >= 1; i--) {
  struct page *page_tail = page + i;


  BUG_ON(page_mapcount(page_tail) < 0);
  tail_count += page_mapcount(page_tail);

  BUG_ON(tail_count < 0);
  BUG_ON(atomic_read(&page_tail->_count) != 0);
  atomic_add(page_mapcount(page) + page_mapcount(page_tail) + 1,
      &page_tail->_count);


  smp_mb();






  page_tail->flags &= ~PAGE_FLAGS_CHECK_AT_PREP | __PG_HWPOISON;
  page_tail->flags |= (page->flags &
         ((1L << PG_referenced) |
          (1L << PG_swapbacked) |
          (1L << PG_mlocked) |
          (1L << PG_uptodate)));
  page_tail->flags |= (1L << PG_dirty);


  smp_wmb();
  page_tail->_mapcount = page->_mapcount;

  BUG_ON(page_tail->mapping);
  page_tail->mapping = page->mapping;

  page_tail->index = page->index + i;

  BUG_ON(!PageAnon(page_tail));
  BUG_ON(!PageUptodate(page_tail));
  BUG_ON(!PageDirty(page_tail));
  BUG_ON(!PageSwapBacked(page_tail));

  mem_cgroup_split_hugepage_commit(page_tail, page);
  lru_add_page_tail(zone, page, page_tail);
 }
 atomic_sub(tail_count, &page->_count);
 BUG_ON(atomic_read(&page->_count) <= 0);

 __dec_zone_page_state(page, NR_ANON_TRANSPARENT_HUGEPAGES);
 __mod_zone_page_state(zone, NR_ANON_PAGES, HPAGE_PMD_NR);

 ClearPageCompound(page);
 compound_unlock(page);
 spin_unlock_irq(&zone->lru_lock);

 for (i = 1; i < HPAGE_PMD_NR; i++) {
  struct page *page_tail = page + i;
  BUG_ON(page_count(page_tail) <= 0);







  put_page(page_tail);
 }





 BUG_ON(page_count(page) <= 0);
}
