
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int bfd_map_over_sections (int *,int ,int *) ;
 int dwarf2_locate_sections ;
 int * dwarf_abbrev_section ;
 scalar_t__ dwarf_eh_frame_section ;
 scalar_t__ dwarf_frame_section ;
 int * dwarf_info_section ;
 scalar_t__ dwarf_line_section ;
 scalar_t__ dwarf_loc_section ;
 scalar_t__ dwarf_macinfo_section ;
 scalar_t__ dwarf_ranges_section ;
 scalar_t__ dwarf_str_section ;

int
dwarf2_has_info (bfd *abfd)
{
  dwarf_info_section = 0;
  dwarf_abbrev_section = 0;
  dwarf_line_section = 0;
  dwarf_str_section = 0;
  dwarf_macinfo_section = 0;
  dwarf_frame_section = 0;
  dwarf_eh_frame_section = 0;
  dwarf_ranges_section = 0;
  dwarf_loc_section = 0;

  bfd_map_over_sections (abfd, dwarf2_locate_sections, ((void*)0));
  return (dwarf_info_section != ((void*)0) && dwarf_abbrev_section != ((void*)0));
}
