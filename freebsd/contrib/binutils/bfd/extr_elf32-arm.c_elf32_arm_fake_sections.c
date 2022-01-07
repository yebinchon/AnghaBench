
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_3__ {int sh_flags; int sh_type; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 int SHF_LINK_ORDER ;
 int SHT_ARM_EXIDX ;
 int TRUE ;
 char* bfd_get_section_name (int *,int *) ;
 scalar_t__ is_arm_elf_unwind_section_name (int *,char const*) ;

__attribute__((used)) static bfd_boolean
elf32_arm_fake_sections (bfd * abfd, Elf_Internal_Shdr * hdr, asection * sec)
{
  const char * name;

  name = bfd_get_section_name (abfd, sec);

  if (is_arm_elf_unwind_section_name (abfd, name))
    {
      hdr->sh_type = SHT_ARM_EXIDX;
      hdr->sh_flags |= SHF_LINK_ORDER;
    }
  return TRUE;
}
