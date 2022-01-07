
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
typedef int bfd ;
struct TYPE_8__ {scalar_t__ sec_info_type; } ;
typedef TYPE_1__ asection ;
struct TYPE_10__ {int sec_info; } ;
struct TYPE_9__ {scalar_t__ st_value; } ;
typedef TYPE_2__ Elf_Internal_Sym ;


 scalar_t__ ELF_INFO_TYPE_MERGE ;
 scalar_t__ _bfd_merged_section_offset (int *,TYPE_1__**,int ,scalar_t__) ;
 TYPE_3__* elf_section_data (TYPE_1__*) ;

bfd_vma
_bfd_elf_rel_local_sym (bfd *abfd,
   Elf_Internal_Sym *sym,
   asection **psec,
   bfd_vma addend)
{
  asection *sec = *psec;

  if (sec->sec_info_type != ELF_INFO_TYPE_MERGE)
    return sym->st_value + addend;

  return _bfd_merged_section_offset (abfd, psec,
         elf_section_data (sec)->sec_info,
         sym->st_value + addend);
}
