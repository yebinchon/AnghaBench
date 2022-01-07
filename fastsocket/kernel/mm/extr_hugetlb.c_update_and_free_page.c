
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;
struct hstate {scalar_t__ order; int * nr_huge_pages_node; int nr_huge_pages; } ;


 scalar_t__ MAX_ORDER ;
 int PG_active ;
 int PG_dirty ;
 int PG_error ;
 int PG_locked ;
 int PG_private ;
 int PG_referenced ;
 int PG_reserved ;
 int PG_writeback ;
 int VM_BUG_ON (int) ;
 int __free_pages (struct page*,int ) ;
 int arch_release_hugepage (struct page*) ;
 int huge_page_order (struct hstate*) ;
 size_t page_to_nid (struct page*) ;
 int pages_per_huge_page (struct hstate*) ;
 int set_compound_page_dtor (struct page*,int *) ;
 int set_page_refcounted (struct page*) ;

__attribute__((used)) static void update_and_free_page(struct hstate *h, struct page *page)
{
 int i;

 VM_BUG_ON(h->order >= MAX_ORDER);

 h->nr_huge_pages--;
 h->nr_huge_pages_node[page_to_nid(page)]--;
 for (i = 0; i < pages_per_huge_page(h); i++) {
  page[i].flags &= ~(1 << PG_locked | 1 << PG_error | 1 << PG_referenced |
    1 << PG_dirty | 1 << PG_active | 1 << PG_reserved |
    1 << PG_private | 1<< PG_writeback);
 }
 set_compound_page_dtor(page, ((void*)0));
 set_page_refcounted(page);
 arch_release_hugepage(page);
 __free_pages(page, huge_page_order(h));
}
