
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int vda_next; int vda_name; } ;
struct TYPE_5__ {int vda_next; int vda_name; } ;
typedef TYPE_1__ Elf_Internal_Verdaux ;
typedef TYPE_2__ Elf_External_Verdaux ;


 int H_PUT_32 (int *,int ,int ) ;

void
_bfd_elf_swap_verdaux_out (bfd *abfd,
      const Elf_Internal_Verdaux *src,
      Elf_External_Verdaux *dst)
{
  H_PUT_32 (abfd, src->vda_name, dst->vda_name);
  H_PUT_32 (abfd, src->vda_next, dst->vda_next);
}
