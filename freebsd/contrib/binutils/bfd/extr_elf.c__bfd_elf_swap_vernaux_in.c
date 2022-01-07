
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int vna_next; int vna_name; int vna_other; int vna_flags; int vna_hash; } ;
struct TYPE_5__ {void* vna_next; void* vna_name; void* vna_other; void* vna_flags; void* vna_hash; } ;
typedef TYPE_1__ Elf_Internal_Vernaux ;
typedef TYPE_2__ Elf_External_Vernaux ;


 void* H_GET_16 (int *,int ) ;
 void* H_GET_32 (int *,int ) ;

void
_bfd_elf_swap_vernaux_in (bfd *abfd,
     const Elf_External_Vernaux *src,
     Elf_Internal_Vernaux *dst)
{
  dst->vna_hash = H_GET_32 (abfd, src->vna_hash);
  dst->vna_flags = H_GET_16 (abfd, src->vna_flags);
  dst->vna_other = H_GET_16 (abfd, src->vna_other);
  dst->vna_name = H_GET_32 (abfd, src->vna_name);
  dst->vna_next = H_GET_32 (abfd, src->vna_next);
}
