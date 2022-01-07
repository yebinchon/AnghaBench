
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGEVEC_SIZE ;
 int free_swap_cache (struct page*) ;
 int lru_add_drain () ;
 int min (int,int ) ;
 int release_pages (struct page**,int,int ) ;

void free_pages_and_swap_cache(struct page **pages, int nr)
{
 struct page **pagep = pages;

 lru_add_drain();
 while (nr) {
  int todo = min(nr, PAGEVEC_SIZE);
  int i;

  for (i = 0; i < todo; i++)
   free_swap_cache(pagep[i]);
  release_pages(pagep, todo, 0);
  pagep += todo;
  nr -= todo;
 }
}
