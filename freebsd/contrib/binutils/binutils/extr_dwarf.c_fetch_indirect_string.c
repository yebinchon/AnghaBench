
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwarf_section {unsigned long size; int * start; scalar_t__ address; } ;
struct TYPE_2__ {struct dwarf_section section; } ;


 char const* _ (char*) ;
 TYPE_1__* debug_displays ;
 size_t str ;
 int warn (char const*,unsigned long) ;

__attribute__((used)) static const char *
fetch_indirect_string (unsigned long offset)
{
  struct dwarf_section *section = &debug_displays [str].section;

  if (section->start == ((void*)0))
    return _("<no .debug_str section>");


  offset -= section->address;
  if (offset > section->size)
    {
      warn (_("DW_FORM_strp offset too big: %lx\n"), offset);
      return _("<offset is too big>");
    }

  return (const char *) section->start + offset;
}
