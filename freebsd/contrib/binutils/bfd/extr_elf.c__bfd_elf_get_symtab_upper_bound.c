
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
typedef int asymbol ;
struct TYPE_6__ {long sh_size; } ;
struct TYPE_8__ {TYPE_2__ symtab_hdr; } ;
struct TYPE_7__ {TYPE_1__* s; } ;
struct TYPE_5__ {long sizeof_sym; } ;
typedef TYPE_2__ Elf_Internal_Shdr ;


 TYPE_4__* elf_tdata (int *) ;
 TYPE_3__* get_elf_backend_data (int *) ;

long
_bfd_elf_get_symtab_upper_bound (bfd *abfd)
{
  long symcount;
  long symtab_size;
  Elf_Internal_Shdr *hdr = &elf_tdata (abfd)->symtab_hdr;

  symcount = hdr->sh_size / get_elf_backend_data (abfd)->s->sizeof_sym;
  symtab_size = (symcount + 1) * (sizeof (asymbol *));
  if (symcount > 0)
    symtab_size -= sizeof (asymbol *);

  return symtab_size;
}
