
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct elf_backend_data {int (* elf_backend_omit_section_dynsym ) (TYPE_1__*,struct bfd_link_info*,TYPE_2__*) ;} ;
struct bfd_link_info {scalar_t__ shared; } ;
typedef scalar_t__ bfd_size_type ;
struct TYPE_8__ {TYPE_2__* sections; } ;
typedef TYPE_1__ bfd ;
struct TYPE_9__ {int flags; struct TYPE_9__* next; } ;
typedef TYPE_2__ asection ;
struct TYPE_10__ {scalar_t__ is_relocatable_executable; } ;


 int SEC_ALLOC ;
 int SEC_EXCLUDE ;
 TYPE_6__* elf_hash_table (struct bfd_link_info*) ;
 struct elf_backend_data* get_elf_backend_data (TYPE_1__*) ;
 int stub1 (TYPE_1__*,struct bfd_link_info*,TYPE_2__*) ;

__attribute__((used)) static bfd_size_type
count_section_dynsyms (bfd *output_bfd, struct bfd_link_info *info)
{
  bfd_size_type count;

  count = 0;
  if (info->shared || elf_hash_table (info)->is_relocatable_executable)
    {
      asection *p;
      const struct elf_backend_data *bed;

      bed = get_elf_backend_data (output_bfd);
      for (p = output_bfd->sections; p ; p = p->next)
 if ((p->flags & SEC_EXCLUDE) == 0
     && (p->flags & SEC_ALLOC) != 0
     && !(*bed->elf_backend_omit_section_dynsym) (output_bfd, info, p))
   ++count;
    }
  return count;
}
