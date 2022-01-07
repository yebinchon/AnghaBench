
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int cold; int pages; } ;


 int lru_add_drain () ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_reinit (struct pagevec*) ;
 int release_pages (int ,int ,int ) ;

void __pagevec_release(struct pagevec *pvec)
{
 lru_add_drain();
 release_pages(pvec->pages, pagevec_count(pvec), pvec->cold);
 pagevec_reinit(pvec);
}
