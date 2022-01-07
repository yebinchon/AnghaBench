
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref_group {struct mem_ref_group* next; struct mem_ref_group* refs; } ;
struct mem_ref {struct mem_ref* next; struct mem_ref* refs; } ;


 int free (struct mem_ref_group*) ;

__attribute__((used)) static void
release_mem_refs (struct mem_ref_group *groups)
{
  struct mem_ref_group *next_g;
  struct mem_ref *ref, *next_r;

  for (; groups; groups = next_g)
    {
      next_g = groups->next;
      for (ref = groups->refs; ref; ref = next_r)
 {
   next_r = ref->next;
   free (ref);
 }
      free (groups);
    }
}
