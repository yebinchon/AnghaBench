
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct elf_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef int asection ;
struct TYPE_4__ {int r_info; } ;
typedef int Elf_Internal_Sym ;
typedef TYPE_1__ Elf_Internal_Rela ;


 int ELF32_R_TYPE (int ) ;


 int * _bfd_elf_gc_mark_hook (int *,struct bfd_link_info*,TYPE_1__*,struct elf_link_hash_entry*,int *) ;

__attribute__((used)) static asection *
_bfd_score_elf_gc_mark_hook (asection *sec,
        struct bfd_link_info *info,
        Elf_Internal_Rela *rel,
        struct elf_link_hash_entry *h,
        Elf_Internal_Sym *sym)
{
  if (h != ((void*)0))
    switch (ELF32_R_TYPE (rel->r_info))
      {
      case 128:
      case 129:
 return ((void*)0);
      }

  return _bfd_elf_gc_mark_hook (sec, info, rel, h, sym);
}
