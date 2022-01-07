
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref {int * vops; struct mem_ref* next; } ;
typedef int bitmap_head ;
typedef int * bitmap ;


 int bitmap_and (int *,int *,int *) ;
 int bitmap_clear (int *) ;
 int bitmap_default_obstack ;
 int bitmap_initialize (int *,int *) ;
 int bitmap_ior_into (int *,int *) ;

__attribute__((used)) static void
find_more_ref_vops (struct mem_ref *mem_refs, bitmap clobbered_vops)
{
  bitmap_head tmp, all_vops;
  struct mem_ref *ref;

  bitmap_initialize (&tmp, &bitmap_default_obstack);
  bitmap_initialize (&all_vops, &bitmap_default_obstack);

  for (ref = mem_refs; ref; ref = ref->next)
    {


      bitmap_and (&tmp, &all_vops, ref->vops);
      bitmap_ior_into (clobbered_vops, &tmp);
      bitmap_clear (&tmp);

      bitmap_ior_into (&all_vops, ref->vops);
    }

  bitmap_clear (&all_vops);
}
