
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
struct TYPE_7__ {TYPE_2__* sections; } ;
typedef TYPE_1__ bfd ;
struct TYPE_8__ {int flags; struct TYPE_8__* next; } ;
typedef TYPE_2__ asection ;
struct TYPE_9__ {TYPE_2__* data_index_section; TYPE_2__* text_index_section; } ;


 int SEC_ALLOC ;
 int SEC_EXCLUDE ;
 int SEC_READONLY ;
 int _bfd_elf_link_omit_section_dynsym (TYPE_1__*,struct bfd_link_info*,TYPE_2__*) ;
 TYPE_3__* elf_hash_table (struct bfd_link_info*) ;

void
_bfd_elf_init_2_index_sections (bfd *output_bfd, struct bfd_link_info *info)
{
  asection *s;

  for (s = output_bfd->sections; s != ((void*)0); s = s->next)
    if (((s->flags & (SEC_EXCLUDE | SEC_ALLOC | SEC_READONLY))
  == (SEC_ALLOC | SEC_READONLY))
 && !_bfd_elf_link_omit_section_dynsym (output_bfd, info, s))
      {
 elf_hash_table (info)->text_index_section = s;
 break;
      }

  for (s = output_bfd->sections; s != ((void*)0); s = s->next)
    if (((s->flags & (SEC_EXCLUDE | SEC_ALLOC | SEC_READONLY)) == SEC_ALLOC)
 && !_bfd_elf_link_omit_section_dynsym (output_bfd, info, s))
      {
 elf_hash_table (info)->data_index_section = s;
 break;
      }

  if (elf_hash_table (info)->text_index_section == ((void*)0))
    elf_hash_table (info)->text_index_section
      = elf_hash_table (info)->data_index_section;
}
