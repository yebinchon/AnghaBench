
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int vna_next; int vna_name; int vna_other; int vna_flags; int vna_hash; } ;
struct TYPE_5__ {int vna_next; int vna_name; int vna_other; int vna_flags; int vna_hash; } ;
typedef TYPE_1__ Elf_Internal_Vernaux ;
typedef TYPE_2__ Elf_External_Vernaux ;


 int H_PUT_16 (int *,int ,int ) ;
 int H_PUT_32 (int *,int ,int ) ;

void
_bfd_elf_swap_vernaux_out (bfd *abfd,
      const Elf_Internal_Vernaux *src,
      Elf_External_Vernaux *dst)
{
  H_PUT_32 (abfd, src->vna_hash, dst->vna_hash);
  H_PUT_16 (abfd, src->vna_flags, dst->vna_flags);
  H_PUT_16 (abfd, src->vna_other, dst->vna_other);
  H_PUT_32 (abfd, src->vna_name, dst->vna_name);
  H_PUT_32 (abfd, src->vna_next, dst->vna_next);
}
