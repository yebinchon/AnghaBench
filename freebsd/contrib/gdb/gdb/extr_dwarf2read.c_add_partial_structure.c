
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct partial_die_info {char* name; scalar_t__ tag; scalar_t__ has_children; } ;
struct dwarf2_cu {scalar_t__ language; TYPE_1__* objfile; } ;
typedef int bfd ;
struct TYPE_2__ {int * obfd; } ;


 scalar_t__ DW_TAG_subprogram ;
 int add_partial_symbol (struct partial_die_info*,struct dwarf2_cu*,char const*) ;
 char* class_name_from_physname (char*) ;
 scalar_t__ language_cplus ;
 char* locate_pdi_sibling (struct partial_die_info*,char*,int *,struct dwarf2_cu*) ;
 char* read_partial_die (struct partial_die_info*,int *,char*,struct dwarf2_cu*) ;
 int xfree (char*) ;

__attribute__((used)) static char *
add_partial_structure (struct partial_die_info *struct_pdi, char *info_ptr,
         struct dwarf2_cu *cu,
         const char *namespace)
{
  bfd *abfd = cu->objfile->obfd;
  char *actual_class_name = ((void*)0);

  if (cu->language == language_cplus
      && (namespace == ((void*)0) || namespace[0] == '\0')
      && struct_pdi->name != ((void*)0)
      && struct_pdi->has_children)
    {
      char *next_child = info_ptr;

      while (1)
 {
   struct partial_die_info child_pdi;

   next_child = read_partial_die (&child_pdi, abfd, next_child,
      cu);
   if (!child_pdi.tag)
     break;
   if (child_pdi.tag == DW_TAG_subprogram)
     {
       actual_class_name = class_name_from_physname (child_pdi.name);
       if (actual_class_name != ((void*)0))
  struct_pdi->name = actual_class_name;
       break;
     }
   else
     {
       next_child = locate_pdi_sibling (&child_pdi, next_child,
            abfd, cu);
     }
 }
    }

  add_partial_symbol (struct_pdi, cu, namespace);
  xfree (actual_class_name);

  return locate_pdi_sibling (struct_pdi, info_ptr, abfd, cu);
}
