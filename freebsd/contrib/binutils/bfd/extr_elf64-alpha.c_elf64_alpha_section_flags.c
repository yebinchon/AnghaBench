
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int flagword ;
typedef int bfd_boolean ;
struct TYPE_3__ {int sh_flags; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 int SEC_SMALL_DATA ;
 int SHF_ALPHA_GPREL ;
 int TRUE ;

__attribute__((used)) static bfd_boolean
elf64_alpha_section_flags (flagword *flags, const Elf_Internal_Shdr *hdr)
{
  if (hdr->sh_flags & SHF_ALPHA_GPREL)
    *flags |= SEC_SMALL_DATA;

  return TRUE;
}
