
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_region {struct mem_region* next; } ;


 int delete_mem_region (struct mem_region*) ;
 struct mem_region* mem_region_chain ;

__attribute__((used)) static void
mem_clear (void)
{
  struct mem_region *m;

  while ((m = mem_region_chain) != 0)
    {
      mem_region_chain = m->next;
      delete_mem_region (m);
    }
}
