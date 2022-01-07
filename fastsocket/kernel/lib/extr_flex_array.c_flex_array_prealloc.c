
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flex_array_part {int dummy; } ;
struct flex_array {unsigned int total_nr_elements; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int ENOSPC ;
 struct flex_array_part* __fa_get_part (struct flex_array*,int,int ) ;
 scalar_t__ elements_fit_in_base (struct flex_array*) ;
 int fa_element_to_part_nr (struct flex_array*,unsigned int) ;

int flex_array_prealloc(struct flex_array *fa, unsigned int start,
   unsigned int nr_elements, gfp_t flags)
{
 int start_part;
 int end_part;
 int part_nr;
 unsigned int end;
 struct flex_array_part *part;

 if (!start && !nr_elements)
  return 0;
 if (start >= fa->total_nr_elements)
  return -ENOSPC;
 if (!nr_elements)
  return 0;

 end = start + nr_elements - 1;

 if (end >= fa->total_nr_elements)
  return -ENOSPC;
 if (elements_fit_in_base(fa))
  return 0;
 start_part = fa_element_to_part_nr(fa, start);
 end_part = fa_element_to_part_nr(fa, end);
 for (part_nr = start_part; part_nr <= end_part; part_nr++) {
  part = __fa_get_part(fa, part_nr, flags);
  if (!part)
   return -ENOMEM;
 }
 return 0;
}
