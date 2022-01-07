
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int dwarf2_find_line_info; } ;


 int _bfd_dwarf2_find_inliner_info (int *,char const**,char const**,unsigned int*,int *) ;
 TYPE_1__* elf_tdata (int *) ;

bfd_boolean
_bfd_mips_elf_find_inliner_info (bfd *abfd,
     const char **filename_ptr,
     const char **functionname_ptr,
     unsigned int *line_ptr)
{
  bfd_boolean found;
  found = _bfd_dwarf2_find_inliner_info (abfd, filename_ptr,
      functionname_ptr, line_ptr,
      & elf_tdata (abfd)->dwarf2_find_line_info);
  return found;
}
