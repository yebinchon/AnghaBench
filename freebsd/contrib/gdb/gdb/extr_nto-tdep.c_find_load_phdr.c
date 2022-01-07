
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_7__ {unsigned int e_phnum; } ;
struct TYPE_6__ {TYPE_1__* phdr; } ;
struct TYPE_5__ {scalar_t__ p_type; int p_flags; } ;
typedef TYPE_1__ Elf_Internal_Phdr ;


 int PF_X ;
 scalar_t__ PT_LOAD ;
 TYPE_4__* elf_elfheader (int *) ;
 TYPE_3__* elf_tdata (int *) ;

Elf_Internal_Phdr *
find_load_phdr (bfd *abfd)
{
  Elf_Internal_Phdr *phdr;
  unsigned int i;

  if (!elf_tdata (abfd))
    return ((void*)0);

  phdr = elf_tdata (abfd)->phdr;
  for (i = 0; i < elf_elfheader (abfd)->e_phnum; i++, phdr++)
    {
      if (phdr->p_type == PT_LOAD && (phdr->p_flags & PF_X))
 return phdr;
    }
  return ((void*)0);
}
