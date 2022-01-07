
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;
struct TYPE_2__ {int dwarf2_find_line_info; } ;


 int _bfd_dwarf2_find_line (int *,int **,int *,char const**,unsigned int*,int ,int *) ;
 TYPE_1__* elf_tdata (int *) ;

bfd_boolean
_bfd_elf_find_line (bfd *abfd, asymbol **symbols, asymbol *symbol,
      const char **filename_ptr, unsigned int *line_ptr)
{
  return _bfd_dwarf2_find_line (abfd, symbols, symbol,
    filename_ptr, line_ptr, 0,
    &elf_tdata (abfd)->dwarf2_find_line_info);
}
