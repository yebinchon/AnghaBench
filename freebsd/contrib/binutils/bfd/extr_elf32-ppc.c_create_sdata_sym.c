
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ppc_elf_link_hash_table {int elf; } ;
struct TYPE_6__ {TYPE_3__* sym; int sym_name; } ;
typedef TYPE_2__ elf_linker_section_t ;
typedef int bfd_boolean ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_7__ {int ref_regular; scalar_t__ non_elf; TYPE_1__ root; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__ bfd_link_hash_new ;
 TYPE_3__* elf_link_hash_lookup (int *,int ,int ,int ,int ) ;

__attribute__((used)) static bfd_boolean
create_sdata_sym (struct ppc_elf_link_hash_table *htab,
    elf_linker_section_t *lsect)
{
  lsect->sym = elf_link_hash_lookup (&htab->elf, lsect->sym_name,
         TRUE, FALSE, TRUE);
  if (lsect->sym == ((void*)0))
    return FALSE;
  if (lsect->sym->root.type == bfd_link_hash_new)
    lsect->sym->non_elf = 0;
  lsect->sym->ref_regular = 1;
  return TRUE;
}
