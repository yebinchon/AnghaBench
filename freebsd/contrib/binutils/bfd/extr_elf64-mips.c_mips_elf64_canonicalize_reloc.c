
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct elf_backend_data {TYPE_1__* s; } ;
typedef TYPE_2__* sec_ptr ;
typedef int bfd ;
typedef int asymbol ;
typedef int arelent ;
struct TYPE_6__ {int reloc_count; int * relocation; } ;
struct TYPE_5__ {int (* slurp_reloc_table ) (int *,TYPE_2__*,int **,int ) ;} ;


 int FALSE ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int stub1 (int *,TYPE_2__*,int **,int ) ;

__attribute__((used)) static long
mips_elf64_canonicalize_reloc (bfd *abfd, sec_ptr section,
          arelent **relptr, asymbol **symbols)
{
  arelent *tblptr;
  unsigned int i;
  const struct elf_backend_data *bed = get_elf_backend_data (abfd);

  if (! bed->s->slurp_reloc_table (abfd, section, symbols, FALSE))
    return -1;

  tblptr = section->relocation;
  for (i = 0; i < section->reloc_count * 3; i++)
    *relptr++ = tblptr++;

  *relptr = ((void*)0);

  return section->reloc_count * 3;
}
