
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct objfile {int obfd; } ;
struct find_targ_sec_arg {TYPE_1__** resultp; int targ_index; } ;
struct coff_symbol {int c_secnum; } ;
struct TYPE_3__ {int index; } ;
typedef TYPE_1__ asection ;


 int SECT_OFF_DATA (struct objfile*) ;
 int SECT_OFF_TEXT (struct objfile*) ;
 int SEC_CODE ;
 int SEC_LOAD ;
 int abfd ;
 int bfd_get_section_flags (int ,TYPE_1__*) ;
 int bfd_map_over_sections (int ,int ,struct find_targ_sec_arg*) ;
 int find_targ_sec ;

__attribute__((used)) static int
cs_to_section (struct coff_symbol *cs, struct objfile *objfile)
{
  asection *sect = ((void*)0);
  struct find_targ_sec_arg args;
  int off = SECT_OFF_TEXT (objfile);

  args.targ_index = cs->c_secnum;
  args.resultp = &sect;
  bfd_map_over_sections (objfile->obfd, find_targ_sec, &args);
  if (sect != ((void*)0))
    {

      if (bfd_get_section_flags (abfd, sect) & SEC_CODE)
 off = SECT_OFF_TEXT (objfile);
      else if (bfd_get_section_flags (abfd, sect) & SEC_LOAD)
 off = SECT_OFF_DATA (objfile);
      else

 off = sect->index;
    }
  return off;
}
