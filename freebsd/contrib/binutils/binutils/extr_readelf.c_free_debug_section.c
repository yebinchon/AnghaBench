
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwarf_section {scalar_t__ size; scalar_t__ address; int * start; } ;
typedef enum dwarf_section_display_enum { ____Placeholder_dwarf_section_display_enum } dwarf_section_display_enum ;
struct TYPE_2__ {struct dwarf_section section; } ;


 TYPE_1__* debug_displays ;
 int free (char*) ;

void
free_debug_section (enum dwarf_section_display_enum debug)
{
  struct dwarf_section *section = &debug_displays [debug].section;

  if (section->start == ((void*)0))
    return;

  free ((char *) section->start);
  section->start = ((void*)0);
  section->address = 0;
  section->size = 0;
}
