
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_5__ {int r_addend; int r_info; int r_offset; } ;
struct TYPE_4__ {int r_addend; int r_info; int r_offset; } ;
typedef TYPE_1__ Elf_Internal_Rela ;
typedef TYPE_2__ Elf_External_Rela ;


 int H_PUT_SIGNED_WORD (int *,int ,int ) ;
 int H_PUT_WORD (int *,int ,int ) ;

void
elf_swap_reloca_out (bfd *abfd,
       const Elf_Internal_Rela *src,
       bfd_byte *d)
{
  Elf_External_Rela *dst = (Elf_External_Rela *) d;
  H_PUT_WORD (abfd, src->r_offset, dst->r_offset);
  H_PUT_WORD (abfd, src->r_info, dst->r_info);
  H_PUT_SIGNED_WORD (abfd, src->r_addend, dst->r_addend);
}
