
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct find_targ_sec_arg {int ** resultp; int targ_index; } ;
struct coff_symbol {int c_secnum; } ;
typedef int bfd ;
typedef int asection ;
struct TYPE_2__ {int obfd; } ;
typedef int CORE_ADDR ;


 int bfd_get_section_vma (int ,int *) ;
 int bfd_map_over_sections (int *,int ,struct find_targ_sec_arg*) ;
 int find_targ_sec ;
 TYPE_1__* objfile ;

__attribute__((used)) static CORE_ADDR
cs_section_address (struct coff_symbol *cs, bfd *abfd)
{
  asection *sect = ((void*)0);
  struct find_targ_sec_arg args;
  CORE_ADDR addr = 0;

  args.targ_index = cs->c_secnum;
  args.resultp = &sect;
  bfd_map_over_sections (abfd, find_targ_sec, &args);
  if (sect != ((void*)0))
    addr = bfd_get_section_vma (objfile->obfd, sect);
  return addr;
}
