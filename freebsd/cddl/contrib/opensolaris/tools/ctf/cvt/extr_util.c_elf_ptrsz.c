
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* e_ident; } ;
typedef TYPE_1__ GElf_Ehdr ;
typedef int Elf ;


 size_t EI_CLASS ;
 scalar_t__ ELFCLASS32 ;
 scalar_t__ ELFCLASS64 ;
 scalar_t__ elf_errmsg (int) ;
 int * gelf_getehdr (int *,TYPE_1__*) ;
 int terminate (char*,scalar_t__) ;

size_t
elf_ptrsz(Elf *elf)
{
 GElf_Ehdr ehdr;

 if (gelf_getehdr(elf, &ehdr) == ((void*)0)) {
  terminate("failed to read ELF header: %s\n",
      elf_errmsg(-1));
 }

 if (ehdr.e_ident[EI_CLASS] == ELFCLASS32)
  return (4);
 else if (ehdr.e_ident[EI_CLASS] == ELFCLASS64)
  return (8);
 else
  terminate("unknown ELF class %d\n", ehdr.e_ident[EI_CLASS]);


 return (0);
}
