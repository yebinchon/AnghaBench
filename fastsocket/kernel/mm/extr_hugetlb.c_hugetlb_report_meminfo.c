
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct hstate {int surplus_huge_pages; int resv_huge_pages; int free_huge_pages; int nr_huge_pages; } ;


 int PAGE_SHIFT ;
 struct hstate default_hstate ;
 int huge_page_order (struct hstate*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,unsigned long) ;

void hugetlb_report_meminfo(struct seq_file *m)
{
 struct hstate *h = &default_hstate;
 seq_printf(m,
   "HugePages_Total:   %5lu\n"
   "HugePages_Free:    %5lu\n"
   "HugePages_Rsvd:    %5lu\n"
   "HugePages_Surp:    %5lu\n"
   "Hugepagesize:   %8lu kB\n",
   h->nr_huge_pages,
   h->free_huge_pages,
   h->resv_huge_pages,
   h->surplus_huge_pages,
   1UL << (huge_page_order(h) + PAGE_SHIFT - 10));
}
