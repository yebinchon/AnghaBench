
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int vn_next; int vn_aux; int vn_file; int vn_cnt; int vn_version; } ;
struct TYPE_5__ {int vn_next; int vn_aux; int vn_file; int vn_cnt; int vn_version; } ;
typedef TYPE_1__ Elf_Internal_Verneed ;
typedef TYPE_2__ Elf_External_Verneed ;


 int H_PUT_16 (int *,int ,int ) ;
 int H_PUT_32 (int *,int ,int ) ;

void
_bfd_elf_swap_verneed_out (bfd *abfd,
      const Elf_Internal_Verneed *src,
      Elf_External_Verneed *dst)
{
  H_PUT_16 (abfd, src->vn_version, dst->vn_version);
  H_PUT_16 (abfd, src->vn_cnt, dst->vn_cnt);
  H_PUT_32 (abfd, src->vn_file, dst->vn_file);
  H_PUT_32 (abfd, src->vn_aux, dst->vn_aux);
  H_PUT_32 (abfd, src->vn_next, dst->vn_next);
}
