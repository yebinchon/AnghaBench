
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hstate {unsigned long resv_huge_pages; scalar_t__ order; int surplus_huge_pages; } ;


 scalar_t__ MAX_ORDER ;
 size_t N_HIGH_MEMORY ;
 int free_pool_huge_page (struct hstate*,int *,int) ;
 unsigned long min (unsigned long,int ) ;
 int * node_states ;

__attribute__((used)) static void return_unused_surplus_pages(struct hstate *h,
     unsigned long unused_resv_pages)
{
 unsigned long nr_pages;


 h->resv_huge_pages -= unused_resv_pages;


 if (h->order >= MAX_ORDER)
  return;

 nr_pages = min(unused_resv_pages, h->surplus_huge_pages);
 while (nr_pages--) {
  if (!free_pool_huge_page(h, &node_states[N_HIGH_MEMORY], 1))
   break;
 }
}
