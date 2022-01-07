
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* e_ehdr64; TYPE_5__* e_ehdr32; } ;
struct TYPE_8__ {TYPE_2__ e_ehdr; } ;
struct TYPE_10__ {TYPE_1__ e_elf; } ;
struct TYPE_13__ {scalar_t__ e_kind; int e_class; TYPE_3__ e_u; } ;
struct TYPE_12__ {int e_machine; } ;
struct TYPE_11__ {int e_machine; } ;
typedef TYPE_4__ Elf64_Ehdr ;
typedef TYPE_5__ Elf32_Ehdr ;
typedef TYPE_6__ Elf ;




 int ELFCLASSNONE ;
 scalar_t__ ELF_K_ELF ;
 int EM_NONE ;
 int assert (int) ;

int
_libelf_elfmachine(Elf *e)
{
 Elf32_Ehdr *eh32;
 Elf64_Ehdr *eh64;

 if (!e)
  return EM_NONE;

 assert(e->e_kind == ELF_K_ELF);
 assert(e->e_class != ELFCLASSNONE);

 eh32 = ((void*)0);
 eh64 = ((void*)0);

 switch (e->e_class) {
 case 129:
  eh32 = e->e_u.e_elf.e_ehdr.e_ehdr32;
  return eh32 ? eh32->e_machine : EM_NONE;
 case 128:
  eh64 = e->e_u.e_elf.e_ehdr.e_ehdr64;
  return eh64 ? eh64->e_machine : EM_NONE;
 }

 return (EM_NONE);
}
