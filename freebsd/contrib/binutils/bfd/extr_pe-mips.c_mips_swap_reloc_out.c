
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_reloc {int r_type; int r_offset; int r_symndx; int r_vaddr; } ;
struct external_reloc {int r_type; int r_symndx; int r_vaddr; } ;
typedef int bfd_vma ;
typedef int bfd ;


 int H_PUT_16 (int *,int,int ) ;
 int H_PUT_32 (int *,int ,int ) ;
 int MIPS_R_PAIR ;


 unsigned int RELSZ ;

__attribute__((used)) static unsigned int
mips_swap_reloc_out (bfd * abfd, void * src, void * dst)
{
  static int prev_offset = 1;
  static bfd_vma prev_addr = 0;
  struct internal_reloc *reloc_src = (struct internal_reloc *)src;
  struct external_reloc *reloc_dst = (struct external_reloc *)dst;

  switch (reloc_src->r_type)
    {
    case 129:
      prev_addr = reloc_src->r_vaddr;
      prev_offset = reloc_src->r_offset;
      break;
    case 128:
      if (reloc_src->r_vaddr == prev_addr)
 {




   H_PUT_32 (abfd, reloc_src->r_vaddr, reloc_dst->r_vaddr);
   H_PUT_32 (abfd, reloc_src->r_symndx, reloc_dst->r_symndx);
   H_PUT_16 (abfd, MIPS_R_PAIR, reloc_dst->r_type);
   return RELSZ;
 }
      break;
    }

  H_PUT_32 (abfd, reloc_src->r_vaddr, reloc_dst->r_vaddr);
  H_PUT_32 (abfd, reloc_src->r_symndx, reloc_dst->r_symndx);

  H_PUT_16 (abfd, reloc_src->r_type, reloc_dst->r_type);
  return RELSZ;
}
