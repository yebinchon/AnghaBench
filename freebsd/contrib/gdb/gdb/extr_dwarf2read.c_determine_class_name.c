
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {int dummy; } ;
struct die_info {scalar_t__ tag; struct die_info* child; } ;
struct cleanup {int dummy; } ;


 scalar_t__ DW_TAG_subprogram ;
 char* class_name_from_physname (int ) ;
 char* determine_prefix (struct die_info*,struct dwarf2_cu*) ;
 struct die_info* die_specification (struct die_info*,struct dwarf2_cu*) ;
 int do_cleanups (struct cleanup*) ;
 int dwarf2_linkage_name (struct die_info*,struct dwarf2_cu*) ;
 char* dwarf2_name (struct die_info*,struct dwarf2_cu*) ;
 struct cleanup* make_cleanup (int ,char*) ;
 char* processing_current_prefix ;
 int processing_has_namespace_info ;
 struct die_info* sibling_die (struct die_info*) ;
 char* typename_concat (char*,char const*) ;
 int xfree ;

__attribute__((used)) static char *
determine_class_name (struct die_info *die, struct dwarf2_cu *cu)
{
  struct cleanup *back_to = ((void*)0);
  struct die_info *spec_die = die_specification (die, cu);
  char *new_prefix = ((void*)0);




  if (spec_die != ((void*)0))
    {
      char *specification_prefix = determine_prefix (spec_die, cu);
      processing_current_prefix = specification_prefix;
      back_to = make_cleanup (xfree, specification_prefix);
    }




  if (!processing_has_namespace_info)
    {
      struct die_info *child;

      for (child = die->child;
    child != ((void*)0) && child->tag != 0;
    child = sibling_die (child))
 {
   if (child->tag == DW_TAG_subprogram)
     {
       new_prefix = class_name_from_physname (dwarf2_linkage_name
           (child, cu));

       if (new_prefix != ((void*)0))
  break;
     }
 }
    }

  if (new_prefix == ((void*)0))
    {
      const char *name = dwarf2_name (die, cu);
      new_prefix = typename_concat (processing_current_prefix,
        name ? name : "<<anonymous>>");
    }

  if (back_to != ((void*)0))
    do_cleanups (back_to);

  return new_prefix;
}
