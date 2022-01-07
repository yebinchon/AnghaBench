
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int irix_compat_t ;
struct TYPE_3__ {int * xvec; } ;
typedef TYPE_1__ bfd ;


 int bfd_elf32_nbigmips_vec ;
 int bfd_elf32_nlittlemips_vec ;
 int ict_irix6 ;
 int ict_none ;

__attribute__((used)) static irix_compat_t
elf_n32_mips_irix_compat (bfd *abfd)
{
  if ((abfd->xvec == &bfd_elf32_nbigmips_vec)
      || (abfd->xvec == &bfd_elf32_nlittlemips_vec))
    return ict_irix6;
  else
    return ict_none;
}
