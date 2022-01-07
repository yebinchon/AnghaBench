
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfd_link_info {int hash; } ;
struct TYPE_3__ {int sec_info_type; int vma; int output_offset; int output_section; } ;
typedef TYPE_1__ asection ;


 int ELF_INFO_TYPE_JUST_SYMS ;
 int bfd_abs_section_ptr ;
 int is_elf_hash_table (int ) ;

void
_bfd_elf_link_just_syms (asection *sec, struct bfd_link_info *info)
{
  sec->output_section = bfd_abs_section_ptr;
  sec->output_offset = sec->vma;
  if (!is_elf_hash_table (info->hash))
    return;

  sec->sec_info_type = ELF_INFO_TYPE_JUST_SYMS;
}
