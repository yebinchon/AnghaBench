
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_syment {int dummy; } ;
struct internal_reloc {int dummy; } ;
struct bfd_link_info {scalar_t__ relocatable; } ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;


 int TRUE ;
 int _bfd_coff_generic_relocate_section (int *,struct bfd_link_info*,int *,int *,int *,struct internal_reloc*,struct internal_syment*,int **) ;

__attribute__((used)) static bfd_boolean
coff_pe_amd64_relocate_section (bfd *output_bfd,
    struct bfd_link_info *info,
    bfd *input_bfd,
    asection *input_section,
    bfd_byte *contents,
    struct internal_reloc *relocs,
    struct internal_syment *syms,
    asection **sections)
{
  if (info->relocatable)
    return TRUE;

  return _bfd_coff_generic_relocate_section (output_bfd, info, input_bfd,input_section, contents,relocs, syms, sections);
}
