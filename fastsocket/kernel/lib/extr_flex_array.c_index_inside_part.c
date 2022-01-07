
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flex_array {unsigned int element_size; } ;


 unsigned int FLEX_ARRAY_ELEMENTS_PER_PART (unsigned int) ;

__attribute__((used)) static unsigned int index_inside_part(struct flex_array *fa,
     unsigned int element_nr)
{
 unsigned int part_offset;

 part_offset = element_nr %
    FLEX_ARRAY_ELEMENTS_PER_PART(fa->element_size);
 return part_offset * fa->element_size;
}
