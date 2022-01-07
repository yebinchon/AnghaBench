
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_3__ {scalar_t__* e_ident; } ;
typedef TYPE_1__ Elf_External_Ehdr ;


 size_t EI_MAG0 ;
 size_t EI_MAG1 ;
 size_t EI_MAG2 ;
 size_t EI_MAG3 ;
 scalar_t__ ELFMAG0 ;
 scalar_t__ ELFMAG1 ;
 scalar_t__ ELFMAG2 ;
 scalar_t__ ELFMAG3 ;

__attribute__((used)) static inline bfd_boolean
elf_file_p (Elf_External_Ehdr *x_ehdrp)
{
  return ((x_ehdrp->e_ident[EI_MAG0] == ELFMAG0)
   && (x_ehdrp->e_ident[EI_MAG1] == ELFMAG1)
   && (x_ehdrp->e_ident[EI_MAG2] == ELFMAG2)
   && (x_ehdrp->e_ident[EI_MAG3] == ELFMAG3));
}
