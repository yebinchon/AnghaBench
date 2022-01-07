
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct absaddr {scalar_t__ section; scalar_t__ offset; } ;
typedef scalar_t__ bfd_vma ;
struct TYPE_3__ {scalar_t__ st_name; scalar_t__ st_shndx; scalar_t__ st_value; int st_info; } ;
typedef TYPE_1__ Elf_Internal_Sym ;


 scalar_t__ ELF_ST_TYPE (int ) ;
 scalar_t__ SHN_UNDEF ;
 scalar_t__ STT_FUNC ;

__attribute__((used)) static void
find_symbol_for_address (Elf_Internal_Sym *symtab,
    unsigned long nsyms,
    const char *strtab,
    unsigned long strtab_size,
    struct absaddr addr,
    const char **symname,
    bfd_vma *offset)
{
  bfd_vma dist = 0x100000;
  Elf_Internal_Sym *sym, *best = ((void*)0);
  unsigned long i;

  for (i = 0, sym = symtab; i < nsyms; ++i, ++sym)
    {
      if (ELF_ST_TYPE (sym->st_info) == STT_FUNC
   && sym->st_name != 0
   && (addr.section == SHN_UNDEF || addr.section == sym->st_shndx)
   && addr.offset >= sym->st_value
   && addr.offset - sym->st_value < dist)
 {
   best = sym;
   dist = addr.offset - sym->st_value;
   if (!dist)
     break;
 }
    }
  if (best)
    {
      *symname = (best->st_name >= strtab_size
    ? "<corrupt>" : strtab + best->st_name);
      *offset = dist;
      return;
    }
  *symname = ((void*)0);
  *offset = addr.offset;
}
