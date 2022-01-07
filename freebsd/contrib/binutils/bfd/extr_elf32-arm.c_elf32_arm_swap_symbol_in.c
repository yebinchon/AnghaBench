
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {int st_value; int st_info; } ;
typedef TYPE_1__ Elf_Internal_Sym ;


 int ELF_ST_BIND (int ) ;
 int ELF_ST_INFO (int ,int ) ;
 scalar_t__ ELF_ST_TYPE (int ) ;
 int FALSE ;
 int STT_ARM_TFUNC ;
 scalar_t__ STT_FUNC ;
 int TRUE ;
 int bfd_elf32_swap_symbol_in (int *,void const*,void const*,TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
elf32_arm_swap_symbol_in (bfd * abfd,
     const void *psrc,
     const void *pshn,
     Elf_Internal_Sym *dst)
{
  if (!bfd_elf32_swap_symbol_in (abfd, psrc, pshn, dst))
    return FALSE;



  if (ELF_ST_TYPE (dst->st_info) == STT_FUNC
      && (dst->st_value & 1))
    {
      dst->st_info = ELF_ST_INFO (ELF_ST_BIND (dst->st_info), STT_ARM_TFUNC);
      dst->st_value &= ~(bfd_vma) 1;
    }
  return TRUE;
}
