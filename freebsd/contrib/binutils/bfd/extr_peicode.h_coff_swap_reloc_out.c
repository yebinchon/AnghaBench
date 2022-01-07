
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_reloc {int r_offset; int r_type; int r_symndx; int r_vaddr; } ;
struct external_reloc {int r_offset; int r_type; int r_symndx; int r_vaddr; } ;
typedef int bfd ;


 int H_PUT_16 (int *,int ,int ) ;
 int H_PUT_32 (int *,int ,int ) ;
 unsigned int RELSZ ;
 int SWAP_OUT_RELOC_EXTRA (int *,struct internal_reloc*,struct external_reloc*) ;
 int SWAP_OUT_RELOC_OFFSET (int *,int ,int ) ;

__attribute__((used)) static unsigned int
coff_swap_reloc_out (bfd * abfd, void * src, void * dst)
{
  struct internal_reloc *reloc_src = (struct internal_reloc *) src;
  struct external_reloc *reloc_dst = (struct external_reloc *) dst;

  H_PUT_32 (abfd, reloc_src->r_vaddr, reloc_dst->r_vaddr);
  H_PUT_32 (abfd, reloc_src->r_symndx, reloc_dst->r_symndx);
  H_PUT_16 (abfd, reloc_src->r_type, reloc_dst->r_type);







  return RELSZ;
}
