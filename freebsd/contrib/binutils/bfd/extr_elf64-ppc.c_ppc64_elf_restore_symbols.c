
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_link_hash_table {int elf; } ;
struct bfd_link_info {int dummy; } ;


 int elf_link_hash_traverse (int *,int ,struct bfd_link_info*) ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;
 int undo_symbol_twiddle ;

void
ppc64_elf_restore_symbols (struct bfd_link_info *info)
{
  struct ppc_link_hash_table *htab = ppc_hash_table (info);
  elf_link_hash_traverse (&htab->elf, undo_symbol_twiddle, info);
}
