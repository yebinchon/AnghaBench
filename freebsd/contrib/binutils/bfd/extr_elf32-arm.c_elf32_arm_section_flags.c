
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int flagword ;
typedef int bfd_boolean ;
struct TYPE_3__ {scalar_t__ sh_type; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 int SEC_LINK_DUPLICATES_SAME_CONTENTS ;
 int SEC_LINK_ONCE ;
 scalar_t__ SHT_NOTE ;
 int TRUE ;

__attribute__((used)) static bfd_boolean
elf32_arm_section_flags (flagword *flags, const Elf_Internal_Shdr *hdr)
{
  if (hdr->sh_type == SHT_NOTE)
    *flags |= SEC_LINK_ONCE | SEC_LINK_DUPLICATES_SAME_CONTENTS;

  return TRUE;
}
