
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hstate {unsigned long nr_huge_pages; } ;


 struct hstate default_hstate ;
 unsigned long pages_per_huge_page (struct hstate*) ;

unsigned long hugetlb_total_pages(void)
{
 struct hstate *h = &default_hstate;
 return h->nr_huge_pages * pages_per_huge_page(h);
}
