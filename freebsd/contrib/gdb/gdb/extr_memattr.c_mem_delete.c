
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_region {int number; struct mem_region* next; } ;


 int delete_mem_region (struct mem_region*) ;
 struct mem_region* mem_region_chain ;
 int printf_unfiltered (char*,int) ;

__attribute__((used)) static void
mem_delete (int num)
{
  struct mem_region *m1, *m;

  if (!mem_region_chain)
    {
      printf_unfiltered ("No memory region number %d.\n", num);
      return;
    }

  if (mem_region_chain->number == num)
    {
      m1 = mem_region_chain;
      mem_region_chain = m1->next;
      delete_mem_region (m1);
    }
  else
    for (m = mem_region_chain; m->next; m = m->next)
      {
 if (m->next->number == num)
   {
     m1 = m->next;
     m->next = m1->next;
     delete_mem_region (m1);
     break;
   }
      }
}
