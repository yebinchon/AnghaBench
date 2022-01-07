
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef int flagword ;
typedef int bfd ;
struct TYPE_16__ {int name; } ;
typedef TYPE_1__ asection ;


 int ABBREV_SECTION ;
 int ARANGES_SECTION ;
 int EH_FRAME_SECTION ;
 int FRAME_SECTION ;
 int INFO_SECTION ;
 int LINE_SECTION ;
 int LOC_SECTION ;
 int MACINFO_SECTION ;
 int PUBNAMES_SECTION ;
 int RANGES_SECTION ;
 int SEC_HAS_CONTENTS ;
 int STR_SECTION ;
 int bfd_get_section_flags (int *,TYPE_1__*) ;
 void* bfd_get_section_size (TYPE_1__*) ;
 TYPE_1__* dwarf_abbrev_section ;
 void* dwarf_abbrev_size ;
 TYPE_1__* dwarf_aranges_section ;
 void* dwarf_aranges_size ;
 TYPE_1__* dwarf_eh_frame_section ;
 void* dwarf_eh_frame_size ;
 TYPE_1__* dwarf_frame_section ;
 void* dwarf_frame_size ;
 TYPE_1__* dwarf_info_section ;
 void* dwarf_info_size ;
 TYPE_1__* dwarf_line_section ;
 void* dwarf_line_size ;
 TYPE_1__* dwarf_loc_section ;
 void* dwarf_loc_size ;
 TYPE_1__* dwarf_macinfo_section ;
 void* dwarf_macinfo_size ;
 TYPE_1__* dwarf_pubnames_section ;
 void* dwarf_pubnames_size ;
 TYPE_1__* dwarf_ranges_section ;
 void* dwarf_ranges_size ;
 TYPE_1__* dwarf_str_section ;
 void* dwarf_str_size ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void
dwarf2_locate_sections (bfd *ignore_abfd, asection *sectp, void *ignore_ptr)
{
  if (strcmp (sectp->name, INFO_SECTION) == 0)
    {
      dwarf_info_size = bfd_get_section_size (sectp);
      dwarf_info_section = sectp;
    }
  else if (strcmp (sectp->name, ABBREV_SECTION) == 0)
    {
      dwarf_abbrev_size = bfd_get_section_size (sectp);
      dwarf_abbrev_section = sectp;
    }
  else if (strcmp (sectp->name, LINE_SECTION) == 0)
    {
      dwarf_line_size = bfd_get_section_size (sectp);
      dwarf_line_section = sectp;
    }
  else if (strcmp (sectp->name, PUBNAMES_SECTION) == 0)
    {
      dwarf_pubnames_size = bfd_get_section_size (sectp);
      dwarf_pubnames_section = sectp;
    }
  else if (strcmp (sectp->name, ARANGES_SECTION) == 0)
    {
      dwarf_aranges_size = bfd_get_section_size (sectp);
      dwarf_aranges_section = sectp;
    }
  else if (strcmp (sectp->name, LOC_SECTION) == 0)
    {
      dwarf_loc_size = bfd_get_section_size (sectp);
      dwarf_loc_section = sectp;
    }
  else if (strcmp (sectp->name, MACINFO_SECTION) == 0)
    {
      dwarf_macinfo_size = bfd_get_section_size (sectp);
      dwarf_macinfo_section = sectp;
    }
  else if (strcmp (sectp->name, STR_SECTION) == 0)
    {
      dwarf_str_size = bfd_get_section_size (sectp);
      dwarf_str_section = sectp;
    }
  else if (strcmp (sectp->name, FRAME_SECTION) == 0)
    {
      dwarf_frame_size = bfd_get_section_size (sectp);
      dwarf_frame_section = sectp;
    }
  else if (strcmp (sectp->name, EH_FRAME_SECTION) == 0)
    {
      flagword aflag = bfd_get_section_flags (ignore_abfd, sectp);
      if (aflag & SEC_HAS_CONTENTS)
        {
          dwarf_eh_frame_size = bfd_get_section_size (sectp);
          dwarf_eh_frame_section = sectp;
        }
    }
  else if (strcmp (sectp->name, RANGES_SECTION) == 0)
    {
      dwarf_ranges_size = bfd_get_section_size (sectp);
      dwarf_ranges_section = sectp;
    }
}
