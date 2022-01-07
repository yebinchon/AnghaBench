
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ e_kind; } ;
typedef scalar_t__ Elf_Kind ;
typedef TYPE_1__ Elf ;


 scalar_t__ ELF_K_AR ;
 scalar_t__ ELF_K_ELF ;
 scalar_t__ ELF_K_NONE ;

Elf_Kind
elf_kind(Elf *e)
{
 if (e == ((void*)0))
  return (ELF_K_NONE);
 if (e->e_kind == ELF_K_AR ||
     e->e_kind == ELF_K_ELF)
  return (e->e_kind);
 return (ELF_K_NONE);
}
