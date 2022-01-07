
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_region {int number; scalar_t__ enabled_p; struct mem_region* next; } ;


 struct mem_region* mem_region_chain ;
 int printf_unfiltered (char*,int) ;

__attribute__((used)) static void
mem_disable (int num)
{
  struct mem_region *m;

  for (m = mem_region_chain; m; m = m->next)
    if (m->number == num)
      {
 m->enabled_p = 0;
 return;
      }
  printf_unfiltered ("No memory region number %d.\n", num);
}
