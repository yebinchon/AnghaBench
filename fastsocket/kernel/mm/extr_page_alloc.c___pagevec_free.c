
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int cold; int * pages; } ;


 int free_hot_cold_page (int ,int ) ;
 int pagevec_count (struct pagevec*) ;
 int trace_mm_pagevec_free (int ,int ) ;

void __pagevec_free(struct pagevec *pvec)
{
 int i = pagevec_count(pvec);

 while (--i >= 0) {
  trace_mm_pagevec_free(pvec->pages[i], pvec->cold);
  free_hot_cold_page(pvec->pages[i], pvec->cold);
 }
}
