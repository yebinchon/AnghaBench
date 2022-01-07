
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned int PAGE_SIZE ;
 struct page* nth_page (struct page*,unsigned long) ;

__attribute__((used)) static inline void __segment_seek(struct page **page, unsigned int *poff,
      unsigned int *plen, unsigned int off)
{
 unsigned long n;

 *poff += off;
 n = *poff / PAGE_SIZE;
 if (n)
  *page = nth_page(*page, n);

 *poff = *poff % PAGE_SIZE;
 *plen -= off;
}
