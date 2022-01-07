
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;

__attribute__((used)) static int page_zero_filled(void *ptr)
{
 unsigned int pos;
 unsigned long *page;

 page = (unsigned long *)ptr;

 for (pos = 0; pos != PAGE_SIZE / sizeof(*page); pos++) {
  if (page[pos])
   return 0;
 }

 return 1;
}
