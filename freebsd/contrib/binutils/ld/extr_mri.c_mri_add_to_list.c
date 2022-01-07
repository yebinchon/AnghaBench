
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_name_struct {char const* name; char const* alias; int * subalign; int * align; scalar_t__ ok_to_load; int * next; int * vma; } ;
typedef int etree_type ;


 struct section_name_struct** lookup (char const*,struct section_name_struct**) ;

__attribute__((used)) static void
mri_add_to_list (struct section_name_struct **list,
   const char *name,
   etree_type *vma,
   const char *zalias,
   etree_type *align,
   etree_type *subalign)
{
  struct section_name_struct **ptr = lookup (name, list);

  (*ptr)->name = name;
  (*ptr)->vma = vma;
  (*ptr)->next = ((void*)0);
  (*ptr)->ok_to_load = 0;
  (*ptr)->alias = zalias;
  (*ptr)->align = align;
  (*ptr)->subalign = subalign;
}
