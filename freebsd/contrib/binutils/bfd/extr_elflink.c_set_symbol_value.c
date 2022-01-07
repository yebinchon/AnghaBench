
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int section; void* value; } ;
struct TYPE_6__ {scalar_t__ link; } ;
struct TYPE_8__ {TYPE_2__ def; TYPE_1__ i; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__ u; } ;
struct elf_link_hash_entry {TYPE_4__ root; } ;
struct elf_final_link_info {TYPE_5__* internal_syms; } ;
typedef void* bfd_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_10__ {void* st_value; int st_shndx; int st_info; } ;
typedef TYPE_5__ Elf_Internal_Sym ;


 scalar_t__ ELF_ST_BIND (int ) ;
 int SHN_ABS ;
 scalar_t__ STB_LOCAL ;
 int bfd_abs_section_ptr ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 struct elf_link_hash_entry** elf_sym_hashes (int *) ;

__attribute__((used)) static void
set_symbol_value (bfd * bfd_with_globals,
    struct elf_final_link_info * finfo,
    int symidx,
    bfd_vma val)
{
  bfd_boolean is_local;
  Elf_Internal_Sym * sym;
  struct elf_link_hash_entry ** sym_hashes;
  struct elf_link_hash_entry * h;

  sym_hashes = elf_sym_hashes (bfd_with_globals);
  sym = finfo->internal_syms + symidx;
  is_local = ELF_ST_BIND(sym->st_info) == STB_LOCAL;

  if (is_local)
    {


      sym->st_shndx = SHN_ABS;
      sym->st_value = val;
    }
  else
    {


      h = sym_hashes [symidx];
      while (h->root.type == bfd_link_hash_indirect
      || h->root.type == bfd_link_hash_warning)
 h = (struct elf_link_hash_entry *) h->root.u.i.link;
      h->root.type = bfd_link_hash_defined;
      h->root.u.def.value = val;
      h->root.u.def.section = bfd_abs_section_ptr;
    }
}
