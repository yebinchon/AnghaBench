
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct elf_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
struct TYPE_9__ {int owner; } ;
typedef TYPE_1__ asection ;
struct TYPE_10__ {int r_info; } ;
typedef int Elf_Internal_Sym ;
typedef TYPE_2__ Elf_Internal_Rela ;


 int ELF_R_TYPE (int ,int ) ;


 TYPE_1__* _bfd_elf_gc_mark_hook (TYPE_1__*,struct bfd_link_info*,TYPE_2__*,struct elf_link_hash_entry*,int *) ;

asection *
_bfd_mips_elf_gc_mark_hook (asection *sec,
       struct bfd_link_info *info,
       Elf_Internal_Rela *rel,
       struct elf_link_hash_entry *h,
       Elf_Internal_Sym *sym)
{


  if (h != ((void*)0))
    switch (ELF_R_TYPE (sec->owner, rel->r_info))
      {
      case 128:
      case 129:
 return ((void*)0);
      }

  return _bfd_elf_gc_mark_hook (sec, info, rel, h, sym);
}
