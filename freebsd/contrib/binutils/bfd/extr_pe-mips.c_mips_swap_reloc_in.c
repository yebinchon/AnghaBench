
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct internal_reloc {int r_symndx; int r_type; int r_offset; scalar_t__ r_extern; scalar_t__ r_size; int r_vaddr; } ;
typedef int bfd ;
struct TYPE_2__ {int r_type; int r_symndx; int r_vaddr; } ;
typedef TYPE_1__ RELOC ;


 int H_GET_16 (int *,int ) ;
 int H_GET_32 (int *,int ) ;
 int H_GET_S32 (int *,int ) ;



__attribute__((used)) static void
mips_swap_reloc_in (bfd * abfd, void * src, void * dst)
{
  static struct internal_reloc pair_prev;
  RELOC *reloc_src = (RELOC *) src;
  struct internal_reloc *reloc_dst = (struct internal_reloc *) dst;

  reloc_dst->r_vaddr = H_GET_32 (abfd, reloc_src->r_vaddr);
  reloc_dst->r_symndx = H_GET_S32 (abfd, reloc_src->r_symndx);
  reloc_dst->r_type = H_GET_16 (abfd, reloc_src->r_type);
  reloc_dst->r_size = 0;
  reloc_dst->r_extern = 0;
  reloc_dst->r_offset = 0;

  switch (reloc_dst->r_type)
  {
  case 128:
    pair_prev = *reloc_dst;
    break;
  case 129:
    reloc_dst->r_offset = reloc_dst->r_symndx;
    if (reloc_dst->r_offset & 0x8000)
      reloc_dst->r_offset -= 0x10000;
    reloc_dst->r_symndx = pair_prev.r_symndx;
    break;
  }
}
