
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref {struct mem_ref* next; } ;


 int free_mem_ref (struct mem_ref*) ;

__attribute__((used)) static void
free_mem_refs (struct mem_ref *refs)
{
  struct mem_ref *ref, *next;

  for (ref = refs; ref; ref = next)
    {
      next = ref->next;
      free_mem_ref (ref);
    }
}
