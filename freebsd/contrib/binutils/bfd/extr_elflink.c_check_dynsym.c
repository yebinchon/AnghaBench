
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_3__ {scalar_t__ st_shndx; } ;
typedef TYPE_1__ Elf_Internal_Sym ;


 int FALSE ;
 scalar_t__ SHN_HIRESERVE ;
 int SHN_LORESERVE ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *,int ,int ) ;
 int bfd_count_sections (int *) ;
 int bfd_error_nonrepresentable_section ;
 int bfd_set_error (int ) ;
 int stub1 (int ,int *,int ,int ) ;

__attribute__((used)) static bfd_boolean
check_dynsym (bfd *abfd, Elf_Internal_Sym *sym)
{
  if (sym->st_shndx > SHN_HIRESERVE)
    {


      (*_bfd_error_handler)
 (_("%B: Too many sections: %d (>= %d)"),
  abfd, bfd_count_sections (abfd), SHN_LORESERVE);
      bfd_set_error (bfd_error_nonrepresentable_section);
      return FALSE;
    }
  return TRUE;
}
