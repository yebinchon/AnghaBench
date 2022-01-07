
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref_loc {struct mem_ref_loc* next; } ;


 int free (struct mem_ref_loc*) ;

__attribute__((used)) static void
free_mem_ref_locs (struct mem_ref_loc *mem_refs)
{
  struct mem_ref_loc *act;

  while (mem_refs)
    {
      act = mem_refs;
      mem_refs = mem_refs->next;
      free (act);
    }
}
