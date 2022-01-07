
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct internal_reloc {int r_offset; int r_type; int r_symndx; int r_vaddr; } ;
typedef int bfd ;
struct TYPE_2__ {int r_offset; int r_type; int r_symndx; int r_vaddr; } ;
typedef TYPE_1__ RELOC ;


 int GET_RELOC_VADDR (int *,int ) ;
 int H_GET_16 (int *,int ) ;
 int H_GET_S32 (int *,int ) ;
 int SWAP_IN_RELOC_OFFSET (int *,int ) ;

__attribute__((used)) static void
coff_swap_reloc_in (bfd * abfd, void * src, void * dst)
{
  RELOC *reloc_src = (RELOC *) src;
  struct internal_reloc *reloc_dst = (struct internal_reloc *) dst;

  reloc_dst->r_vaddr = GET_RELOC_VADDR (abfd, reloc_src->r_vaddr);
  reloc_dst->r_symndx = H_GET_S32 (abfd, reloc_src->r_symndx);
  reloc_dst->r_type = H_GET_16 (abfd, reloc_src->r_type);




}
