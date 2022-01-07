
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {int dummy; } ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;


 scalar_t__ FALSE ;
 scalar_t__ bfd_elf_link_add_symbols (int *,struct bfd_link_info*) ;
 int bfd_map_over_sections (int *,int ,scalar_t__*) ;
 int check_for_relocs ;

__attribute__((used)) static bfd_boolean
elf32_generic_link_add_symbols (bfd *abfd, struct bfd_link_info *info)
{
  bfd_boolean failed = FALSE;


  bfd_map_over_sections (abfd, check_for_relocs, & failed);

  if (failed)
    return FALSE;
  return bfd_elf_link_add_symbols (abfd, info);
}
