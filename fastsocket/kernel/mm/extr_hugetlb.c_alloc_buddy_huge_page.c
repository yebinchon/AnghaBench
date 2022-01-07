
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hstate {scalar_t__ order; scalar_t__ surplus_huge_pages; scalar_t__ nr_overcommit_huge_pages; int nr_huge_pages; int * surplus_huge_pages_node; int * nr_huge_pages_node; } ;


 int HTLB_BUDDY_PGALLOC ;
 int HTLB_BUDDY_PGALLOC_FAIL ;
 scalar_t__ MAX_ORDER ;
 int NUMA_NO_NODE ;
 int __GFP_COMP ;
 int __GFP_NOWARN ;
 int __GFP_REPEAT ;
 int __GFP_THISNODE ;
 int __count_vm_event (int ) ;
 int __free_pages (struct page*,int ) ;
 struct page* alloc_pages (int,int ) ;
 struct page* alloc_pages_exact_node (int,int,int ) ;
 scalar_t__ arch_prepare_hugepage (struct page*) ;
 int free_huge_page ;
 int htlb_alloc_mask ;
 int huge_page_order (struct hstate*) ;
 int hugetlb_lock ;
 unsigned int page_to_nid (struct page*) ;
 int set_compound_page_dtor (struct page*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct page *alloc_buddy_huge_page(struct hstate *h, int nid)
{
 struct page *page;
 unsigned int r_nid;

 if (h->order >= MAX_ORDER)
  return ((void*)0);
 spin_lock(&hugetlb_lock);
 if (h->surplus_huge_pages >= h->nr_overcommit_huge_pages) {
  spin_unlock(&hugetlb_lock);
  return ((void*)0);
 } else {
  h->nr_huge_pages++;
  h->surplus_huge_pages++;
 }
 spin_unlock(&hugetlb_lock);

 if (nid == NUMA_NO_NODE)
  page = alloc_pages(htlb_alloc_mask|__GFP_COMP|
       __GFP_REPEAT|__GFP_NOWARN,
       huge_page_order(h));
 else
  page = alloc_pages_exact_node(nid,
   htlb_alloc_mask|__GFP_COMP|__GFP_THISNODE|
   __GFP_REPEAT|__GFP_NOWARN, huge_page_order(h));

 if (page && arch_prepare_hugepage(page)) {
  __free_pages(page, huge_page_order(h));
  return ((void*)0);
 }

 spin_lock(&hugetlb_lock);
 if (page) {
  r_nid = page_to_nid(page);
  set_compound_page_dtor(page, free_huge_page);



  h->nr_huge_pages_node[r_nid]++;
  h->surplus_huge_pages_node[r_nid]++;
  __count_vm_event(HTLB_BUDDY_PGALLOC);
 } else {
  h->nr_huge_pages--;
  h->surplus_huge_pages--;
  __count_vm_event(HTLB_BUDDY_PGALLOC_FAIL);
 }
 spin_unlock(&hugetlb_lock);

 return page;
}
