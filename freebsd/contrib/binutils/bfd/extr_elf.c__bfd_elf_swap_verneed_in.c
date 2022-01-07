
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int vn_next; int vn_aux; int vn_file; int vn_cnt; int vn_version; } ;
struct TYPE_5__ {void* vn_next; void* vn_aux; void* vn_file; void* vn_cnt; void* vn_version; } ;
typedef TYPE_1__ Elf_Internal_Verneed ;
typedef TYPE_2__ Elf_External_Verneed ;


 void* H_GET_16 (int *,int ) ;
 void* H_GET_32 (int *,int ) ;

void
_bfd_elf_swap_verneed_in (bfd *abfd,
     const Elf_External_Verneed *src,
     Elf_Internal_Verneed *dst)
{
  dst->vn_version = H_GET_16 (abfd, src->vn_version);
  dst->vn_cnt = H_GET_16 (abfd, src->vn_cnt);
  dst->vn_file = H_GET_32 (abfd, src->vn_file);
  dst->vn_aux = H_GET_32 (abfd, src->vn_aux);
  dst->vn_next = H_GET_32 (abfd, src->vn_next);
}
