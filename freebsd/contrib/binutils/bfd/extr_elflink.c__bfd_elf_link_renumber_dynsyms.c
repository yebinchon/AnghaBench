
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct elf_link_local_dynamic_entry {unsigned long dynindx; struct elf_link_local_dynamic_entry* next; } ;
struct elf_backend_data {int (* elf_backend_omit_section_dynsym ) (TYPE_1__*,struct bfd_link_info*,TYPE_2__*) ;} ;
struct bfd_link_info {scalar_t__ shared; } ;
struct TYPE_11__ {TYPE_2__* sections; } ;
typedef TYPE_1__ bfd ;
struct TYPE_12__ {int flags; struct TYPE_12__* next; } ;
typedef TYPE_2__ asection ;
struct TYPE_14__ {unsigned long dynsymcount; struct elf_link_local_dynamic_entry* dynlocal; scalar_t__ is_relocatable_executable; } ;
struct TYPE_13__ {unsigned long dynindx; } ;


 int SEC_ALLOC ;
 int SEC_EXCLUDE ;
 TYPE_8__* elf_hash_table (struct bfd_link_info*) ;
 int elf_link_hash_traverse (TYPE_8__*,int ,unsigned long*) ;
 int elf_link_renumber_hash_table_dynsyms ;
 int elf_link_renumber_local_hash_table_dynsyms ;
 TYPE_6__* elf_section_data (TYPE_2__*) ;
 struct elf_backend_data* get_elf_backend_data (TYPE_1__*) ;
 int stub1 (TYPE_1__*,struct bfd_link_info*,TYPE_2__*) ;

__attribute__((used)) static unsigned long
_bfd_elf_link_renumber_dynsyms (bfd *output_bfd,
    struct bfd_link_info *info,
    unsigned long *section_sym_count)
{
  unsigned long dynsymcount = 0;

  if (info->shared || elf_hash_table (info)->is_relocatable_executable)
    {
      const struct elf_backend_data *bed = get_elf_backend_data (output_bfd);
      asection *p;
      for (p = output_bfd->sections; p ; p = p->next)
 if ((p->flags & SEC_EXCLUDE) == 0
     && (p->flags & SEC_ALLOC) != 0
     && !(*bed->elf_backend_omit_section_dynsym) (output_bfd, info, p))
   elf_section_data (p)->dynindx = ++dynsymcount;
 else
   elf_section_data (p)->dynindx = 0;
    }
  *section_sym_count = dynsymcount;

  elf_link_hash_traverse (elf_hash_table (info),
     elf_link_renumber_local_hash_table_dynsyms,
     &dynsymcount);

  if (elf_hash_table (info)->dynlocal)
    {
      struct elf_link_local_dynamic_entry *p;
      for (p = elf_hash_table (info)->dynlocal; p ; p = p->next)
 p->dynindx = ++dynsymcount;
    }

  elf_link_hash_traverse (elf_hash_table (info),
     elf_link_renumber_hash_table_dynsyms,
     &dynsymcount);




  if (dynsymcount != 0)
    ++dynsymcount;

  elf_hash_table (info)->dynsymcount = dynsymcount;
  return dynsymcount;
}
