
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flex_array {int element_size; } ;


 unsigned int FLEX_ARRAY_ELEMENTS_PER_PART (int ) ;

__attribute__((used)) static int fa_element_to_part_nr(struct flex_array *fa,
     unsigned int element_nr)
{
 return element_nr / FLEX_ARRAY_ELEMENTS_PER_PART(fa->element_size);
}
