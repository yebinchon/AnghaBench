
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flex_array_part {int * elements; } ;
struct flex_array {unsigned int total_nr_elements; int element_size; int * parts; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int ENOSPC ;
 struct flex_array_part* __fa_get_part (struct flex_array*,int,int ) ;
 scalar_t__ elements_fit_in_base (struct flex_array*) ;
 int fa_element_to_part_nr (struct flex_array*,unsigned int) ;
 size_t index_inside_part (struct flex_array*,unsigned int) ;
 int memcpy (void*,void*,int ) ;

int flex_array_put(struct flex_array *fa, unsigned int element_nr, void *src,
   gfp_t flags)
{
 int part_nr = fa_element_to_part_nr(fa, element_nr);
 struct flex_array_part *part;
 void *dst;

 if (element_nr >= fa->total_nr_elements)
  return -ENOSPC;
 if (elements_fit_in_base(fa))
  part = (struct flex_array_part *)&fa->parts[0];
 else {
  part = __fa_get_part(fa, part_nr, flags);
  if (!part)
   return -ENOMEM;
 }
 dst = &part->elements[index_inside_part(fa, element_nr)];
 memcpy(dst, src, fa->element_size);
 return 0;
}
