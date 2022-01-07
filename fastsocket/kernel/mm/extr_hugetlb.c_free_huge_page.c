
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; int * mapping; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {scalar_t__* surplus_huge_pages_node; int surplus_huge_pages; } ;


 int BUG_ON (int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MAX_ORDER ;
 int enqueue_huge_page (struct hstate*,struct page*) ;
 scalar_t__ huge_page_order (struct hstate*) ;
 int hugepage_subpool_put_pages (struct hugepage_subpool*,int) ;
 int hugetlb_lock ;
 int page_count (struct page*) ;
 struct hstate* page_hstate (struct page*) ;
 int page_mapcount (struct page*) ;
 scalar_t__ page_private (struct page*) ;
 int page_to_nid (struct page*) ;
 int set_page_private (struct page*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int update_and_free_page (struct hstate*,struct page*) ;

__attribute__((used)) static void free_huge_page(struct page *page)
{




 struct hstate *h = page_hstate(page);
 int nid = page_to_nid(page);
 struct hugepage_subpool *spool =
  (struct hugepage_subpool *)page_private(page);

 set_page_private(page, 0);
 page->mapping = ((void*)0);
 BUG_ON(page_count(page));
 BUG_ON(page_mapcount(page));
 INIT_LIST_HEAD(&page->lru);

 spin_lock(&hugetlb_lock);
 if (h->surplus_huge_pages_node[nid] && huge_page_order(h) < MAX_ORDER) {
  update_and_free_page(h, page);
  h->surplus_huge_pages--;
  h->surplus_huge_pages_node[nid]--;
 } else {
  enqueue_huge_page(h, page);
 }
 spin_unlock(&hugetlb_lock);
 hugepage_subpool_put_pages(spool, 1);
}
