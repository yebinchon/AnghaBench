
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int p_align; int p_flags; int p_memsz; int p_filesz; int p_paddr; int p_vaddr; int p_offset; int p_type; } ;
struct TYPE_5__ {int p_align; int p_flags; int p_memsz; int p_filesz; int p_paddr; int p_vaddr; int p_offset; int p_type; } ;
typedef TYPE_1__ Elf_Internal_Phdr ;
typedef TYPE_2__ Elf_External_Phdr ;


 int H_PUT_32 (int *,int ,int ) ;
 int H_PUT_WORD (int *,int ,int ) ;

void
elf_swap_phdr_out (bfd *abfd,
     const Elf_Internal_Phdr *src,
     Elf_External_Phdr *dst)
{

  H_PUT_32 (abfd, src->p_type, dst->p_type);
  H_PUT_WORD (abfd, src->p_offset, dst->p_offset);
  H_PUT_WORD (abfd, src->p_vaddr, dst->p_vaddr);
  H_PUT_WORD (abfd, src->p_paddr, dst->p_paddr);
  H_PUT_WORD (abfd, src->p_filesz, dst->p_filesz);
  H_PUT_WORD (abfd, src->p_memsz, dst->p_memsz);
  H_PUT_32 (abfd, src->p_flags, dst->p_flags);
  H_PUT_WORD (abfd, src->p_align, dst->p_align);
}
