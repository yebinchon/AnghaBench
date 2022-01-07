
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_8__ {int sign_extend_vma; } ;
struct TYPE_7__ {int e_shstrndx; int e_shnum; int e_shentsize; int e_phnum; int e_phentsize; int e_ehsize; int e_flags; int e_shoff; int e_phoff; int e_entry; int e_version; int e_machine; int e_type; int e_ident; } ;
struct TYPE_6__ {unsigned int e_type; unsigned int e_machine; unsigned int e_ehsize; unsigned int e_phentsize; unsigned int e_phnum; unsigned int e_shentsize; unsigned int e_shnum; unsigned int e_shstrndx; int e_flags; int e_shoff; int e_phoff; int e_entry; int e_version; int e_ident; } ;
typedef TYPE_1__ Elf_Internal_Ehdr ;
typedef TYPE_2__ Elf_External_Ehdr ;


 int EI_NIDENT ;
 int H_PUT_16 (int *,unsigned int,int ) ;
 int H_PUT_32 (int *,int ,int ) ;
 int H_PUT_SIGNED_WORD (int *,int ,int ) ;
 int H_PUT_WORD (int *,int ,int ) ;
 unsigned int SHN_LORESERVE ;
 unsigned int SHN_UNDEF ;
 unsigned int SHN_XINDEX ;
 TYPE_3__* get_elf_backend_data (int *) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void
elf_swap_ehdr_out (bfd *abfd,
     const Elf_Internal_Ehdr *src,
     Elf_External_Ehdr *dst)
{
  unsigned int tmp;
  int signed_vma = get_elf_backend_data (abfd)->sign_extend_vma;
  memcpy (dst->e_ident, src->e_ident, EI_NIDENT);

  H_PUT_16 (abfd, src->e_type, dst->e_type);
  H_PUT_16 (abfd, src->e_machine, dst->e_machine);
  H_PUT_32 (abfd, src->e_version, dst->e_version);
  if (signed_vma)
    H_PUT_SIGNED_WORD (abfd, src->e_entry, dst->e_entry);
  else
    H_PUT_WORD (abfd, src->e_entry, dst->e_entry);
  H_PUT_WORD (abfd, src->e_phoff, dst->e_phoff);
  H_PUT_WORD (abfd, src->e_shoff, dst->e_shoff);
  H_PUT_32 (abfd, src->e_flags, dst->e_flags);
  H_PUT_16 (abfd, src->e_ehsize, dst->e_ehsize);
  H_PUT_16 (abfd, src->e_phentsize, dst->e_phentsize);
  H_PUT_16 (abfd, src->e_phnum, dst->e_phnum);
  H_PUT_16 (abfd, src->e_shentsize, dst->e_shentsize);
  tmp = src->e_shnum;
  if (tmp >= SHN_LORESERVE)
    tmp = SHN_UNDEF;
  H_PUT_16 (abfd, tmp, dst->e_shnum);
  tmp = src->e_shstrndx;
  if (tmp >= SHN_LORESERVE)
    tmp = SHN_XINDEX;
  H_PUT_16 (abfd, tmp, dst->e_shstrndx);
}
