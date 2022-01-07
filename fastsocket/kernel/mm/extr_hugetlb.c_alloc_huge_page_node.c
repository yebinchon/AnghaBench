
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hstate {int dummy; } ;


 struct page* alloc_buddy_huge_page (struct hstate*,int) ;
 struct page* dequeue_huge_page_node (struct hstate*,int) ;
 int hugetlb_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct page *alloc_huge_page_node(struct hstate *h, int nid)
{
 struct page *page;

 spin_lock(&hugetlb_lock);
 page = dequeue_huge_page_node(h, nid);
 spin_unlock(&hugetlb_lock);

 if (!page)
  page = alloc_buddy_huge_page(h, nid);

 return page;
}
