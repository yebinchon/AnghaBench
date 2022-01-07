
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
struct TYPE_6__ {void* e_shstrndx; void* e_shnum; void* e_shentsize; void* e_phnum; void* e_phentsize; void* e_ehsize; void* e_flags; void* e_shoff; void* e_phoff; void* e_entry; void* e_version; void* e_machine; void* e_type; int e_ident; } ;
typedef TYPE_1__ Elf_Internal_Ehdr ;
typedef TYPE_2__ Elf_External_Ehdr ;


 int EI_NIDENT ;
 void* H_GET_16 (int *,int ) ;
 void* H_GET_32 (int *,int ) ;
 void* H_GET_SIGNED_WORD (int *,int ) ;
 void* H_GET_WORD (int *,int ) ;
 TYPE_3__* get_elf_backend_data (int *) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void
elf_swap_ehdr_in (bfd *abfd,
    const Elf_External_Ehdr *src,
    Elf_Internal_Ehdr *dst)
{
  int signed_vma = get_elf_backend_data (abfd)->sign_extend_vma;
  memcpy (dst->e_ident, src->e_ident, EI_NIDENT);
  dst->e_type = H_GET_16 (abfd, src->e_type);
  dst->e_machine = H_GET_16 (abfd, src->e_machine);
  dst->e_version = H_GET_32 (abfd, src->e_version);
  if (signed_vma)
    dst->e_entry = H_GET_SIGNED_WORD (abfd, src->e_entry);
  else
    dst->e_entry = H_GET_WORD (abfd, src->e_entry);
  dst->e_phoff = H_GET_WORD (abfd, src->e_phoff);
  dst->e_shoff = H_GET_WORD (abfd, src->e_shoff);
  dst->e_flags = H_GET_32 (abfd, src->e_flags);
  dst->e_ehsize = H_GET_16 (abfd, src->e_ehsize);
  dst->e_phentsize = H_GET_16 (abfd, src->e_phentsize);
  dst->e_phnum = H_GET_16 (abfd, src->e_phnum);
  dst->e_shentsize = H_GET_16 (abfd, src->e_shentsize);
  dst->e_shnum = H_GET_16 (abfd, src->e_shnum);
  dst->e_shstrndx = H_GET_16 (abfd, src->e_shstrndx);
}
