
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_vma ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;
typedef int asection ;
struct TYPE_2__ {int line_info; int dwarf2_find_line_info; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ _bfd_dwarf2_find_nearest_line (int *,int *,int **,int ,char const**,char const**,unsigned int*,int ,int *) ;
 int _bfd_stab_section_find_nearest_line (int *,int **,int *,int ,scalar_t__*,char const**,char const**,unsigned int*,int *) ;
 int arm_elf_find_function (int *,int *,int **,int ,char const**,char const**) ;
 TYPE_1__* elf_tdata (int *) ;

__attribute__((used)) static bfd_boolean
elf32_arm_find_nearest_line (bfd * abfd,
        asection * section,
        asymbol ** symbols,
        bfd_vma offset,
        const char ** filename_ptr,
        const char ** functionname_ptr,
        unsigned int * line_ptr)
{
  bfd_boolean found = FALSE;



  if (_bfd_dwarf2_find_nearest_line (abfd, section, symbols, offset,
         filename_ptr, functionname_ptr,
         line_ptr, 0,
         & elf_tdata (abfd)->dwarf2_find_line_info))
    {
      if (!*functionname_ptr)
 arm_elf_find_function (abfd, section, symbols, offset,
          *filename_ptr ? ((void*)0) : filename_ptr,
          functionname_ptr);

      return TRUE;
    }

  if (! _bfd_stab_section_find_nearest_line (abfd, symbols, section, offset,
          & found, filename_ptr,
          functionname_ptr, line_ptr,
          & elf_tdata (abfd)->line_info))
    return FALSE;

  if (found && (*functionname_ptr || *line_ptr))
    return TRUE;

  if (symbols == ((void*)0))
    return FALSE;

  if (! arm_elf_find_function (abfd, section, symbols, offset,
          filename_ptr, functionname_ptr))
    return FALSE;

  *line_ptr = 0;
  return TRUE;
}
