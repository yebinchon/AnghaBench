
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dwarf2_debug {int dwarf_ranges_buffer; int syms; int dwarf_ranges_size; } ;
struct comp_unit {int * abfd; struct dwarf2_debug* stash; } ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ asection ;


 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ) ;
 int bfd_error_bad_value ;
 TYPE_1__* bfd_get_section_by_name (int *,char*) ;
 int bfd_set_error (int ) ;
 int bfd_simple_get_relocated_section_contents (int *,TYPE_1__*,int *,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static bfd_boolean
read_debug_ranges (struct comp_unit *unit)
{
  struct dwarf2_debug *stash = unit->stash;
  if (! stash->dwarf_ranges_buffer)
    {
      bfd *abfd = unit->abfd;
      asection *msec;

      msec = bfd_get_section_by_name (abfd, ".debug_ranges");
      if (! msec)
 {
   (*_bfd_error_handler) (_("Dwarf Error: Can't find .debug_ranges section."));
   bfd_set_error (bfd_error_bad_value);
   return FALSE;
 }

      stash->dwarf_ranges_size = msec->size;
      stash->dwarf_ranges_buffer
 = bfd_simple_get_relocated_section_contents (abfd, msec, ((void*)0),
           stash->syms);
      if (! stash->dwarf_ranges_buffer)
 return FALSE;
    }
  return TRUE;
}
