
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int vs_vers; } ;
struct TYPE_5__ {int vs_vers; } ;
typedef TYPE_1__ Elf_Internal_Versym ;
typedef TYPE_2__ Elf_External_Versym ;


 int H_GET_16 (int *,int ) ;

void
_bfd_elf_swap_versym_in (bfd *abfd,
    const Elf_External_Versym *src,
    Elf_Internal_Versym *dst)
{
  dst->vs_vers = H_GET_16 (abfd, src->vs_vers);
}
