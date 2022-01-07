
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int st_other; } ;
struct TYPE_8__ {TYPE_1__ internal_elf_sym; } ;
typedef TYPE_2__ elf_symbol_type ;
typedef int bfd_boolean ;
struct TYPE_9__ {int the_bfd; } ;
typedef TYPE_3__ asymbol ;


 int ELF_ST_VISIBILITY (int ) ;
 int FALSE ;


 int TRUE ;
 TYPE_2__* elf_symbol_from (int ,TYPE_3__*) ;

__attribute__((used)) static bfd_boolean
is_hidden_symbol (asymbol *sym)
{
  elf_symbol_type *elf_sym;

  elf_sym = elf_symbol_from (sym->the_bfd, sym);
  if (elf_sym != ((void*)0))
    switch (ELF_ST_VISIBILITY (elf_sym->internal_elf_sym.st_other))
      {
      case 129:
      case 128:
 return TRUE;
      }
  return FALSE;
}
