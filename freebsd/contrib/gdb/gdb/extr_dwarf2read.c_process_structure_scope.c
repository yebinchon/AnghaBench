
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
struct dwarf2_cu {struct objfile* objfile; } ;
struct die_info {scalar_t__ tag; int type; struct die_info* child; } ;


 scalar_t__ DW_TAG_inheritance ;
 scalar_t__ DW_TAG_member ;
 scalar_t__ DW_TAG_variable ;
 char* TYPE_TAG_NAME (int ) ;
 int die_is_declaration (struct die_info*,struct dwarf2_cu*) ;
 int new_symbol (struct die_info*,int ,struct dwarf2_cu*) ;
 int process_die (struct die_info*,struct dwarf2_cu*) ;
 char const* processing_current_prefix ;
 struct die_info* sibling_die (struct die_info*) ;

__attribute__((used)) static void
process_structure_scope (struct die_info *die, struct dwarf2_cu *cu)
{
  struct objfile *objfile = cu->objfile;
  const char *previous_prefix = processing_current_prefix;
  struct die_info *child_die = die->child;

  if (TYPE_TAG_NAME (die->type) != ((void*)0))
    processing_current_prefix = TYPE_TAG_NAME (die->type);
  while (child_die != ((void*)0) && child_die->tag)
    {
      if (child_die->tag == DW_TAG_member
   || child_die->tag == DW_TAG_variable
   || child_die->tag == DW_TAG_inheritance)
 {

 }
      else
 process_die (child_die, cu);

      child_die = sibling_die (child_die);
    }

  if (die->child != ((void*)0) && ! die_is_declaration (die, cu))
    new_symbol (die, die->type, cu);

  processing_current_prefix = previous_prefix;
}
