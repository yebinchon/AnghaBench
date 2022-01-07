
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hstate {int * nr_huge_pages_node; int nr_huge_pages; } ;


 int free_huge_page ;
 int hugetlb_lock ;
 int put_page (struct page*) ;
 int set_compound_page_dtor (struct page*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void prep_new_huge_page(struct hstate *h, struct page *page, int nid)
{
 set_compound_page_dtor(page, free_huge_page);
 spin_lock(&hugetlb_lock);
 h->nr_huge_pages++;
 h->nr_huge_pages_node[nid]++;
 spin_unlock(&hugetlb_lock);
 put_page(page);
}
