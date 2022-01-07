
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int annotation_level ;
 int print_value_flags (struct type*) ;
 int printf_filtered (char*,...) ;

void
annotate_array_section_begin (int index, struct type *elttype)
{
  if (annotation_level == 2)
    {
      printf_filtered ("\n\032\032array-section-begin %d ", index);
      print_value_flags (elttype);
      printf_filtered ("\n");
    }
}
