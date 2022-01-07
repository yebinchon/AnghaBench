
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flex_array {int * parts; } ;


 int FLEX_ARRAY_NR_BASE_PTRS ;
 scalar_t__ elements_fit_in_base (struct flex_array*) ;
 int kfree (int ) ;

void flex_array_free_parts(struct flex_array *fa)
{
 int part_nr;

 if (elements_fit_in_base(fa))
  return;
 for (part_nr = 0; part_nr < FLEX_ARRAY_NR_BASE_PTRS; part_nr++)
  kfree(fa->parts[part_nr]);
}
