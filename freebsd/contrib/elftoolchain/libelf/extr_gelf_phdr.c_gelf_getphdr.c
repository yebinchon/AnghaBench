
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int e_class; scalar_t__ e_kind; } ;
struct TYPE_12__ {scalar_t__ p_align; int p_flags; scalar_t__ p_memsz; scalar_t__ p_filesz; scalar_t__ p_paddr; scalar_t__ p_vaddr; int p_offset; int p_type; } ;
struct TYPE_11__ {void* p_align; int p_flags; void* p_memsz; void* p_filesz; void* p_paddr; void* p_vaddr; int p_offset; int p_type; } ;
typedef TYPE_1__ GElf_Phdr ;
typedef void* Elf64_Xword ;
typedef TYPE_1__ Elf64_Phdr ;
typedef int Elf64_Ehdr ;
typedef void* Elf64_Addr ;
typedef TYPE_3__ Elf32_Phdr ;
typedef int Elf32_Ehdr ;
typedef TYPE_4__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 scalar_t__ ELF_K_ELF ;
 int LIBELF_SET_ERROR (int ,int ) ;
 void* _libelf_ehdr (TYPE_4__*,int,int ) ;
 void* _libelf_getphdr (TYPE_4__*,int) ;
 scalar_t__ elf_getphdrnum (TYPE_4__*,size_t*) ;

GElf_Phdr *
gelf_getphdr(Elf *e, int index, GElf_Phdr *d)
{
 int ec;
 Elf32_Ehdr *eh32;
 Elf64_Ehdr *eh64;
 Elf32_Phdr *ep32;
 Elf64_Phdr *ep64;
 size_t phnum;

 if (d == ((void*)0) || e == ((void*)0) ||
     ((ec = e->e_class) != ELFCLASS32 && ec != ELFCLASS64) ||
     (e->e_kind != ELF_K_ELF) || index < 0 ||
     elf_getphdrnum(e, &phnum) < 0) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 if ((size_t)index >= phnum) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 if (ec == ELFCLASS32) {
  if ((eh32 = _libelf_ehdr(e, ELFCLASS32, 0)) == ((void*)0) ||
      ((ep32 = _libelf_getphdr(e, ELFCLASS32)) == ((void*)0)))
   return (((void*)0));

  ep32 += index;

  d->p_type = ep32->p_type;
  d->p_offset = ep32->p_offset;
  d->p_vaddr = (Elf64_Addr) ep32->p_vaddr;
  d->p_paddr = (Elf64_Addr) ep32->p_paddr;
  d->p_filesz = (Elf64_Xword) ep32->p_filesz;
  d->p_memsz = (Elf64_Xword) ep32->p_memsz;
  d->p_flags = ep32->p_flags;
  d->p_align = (Elf64_Xword) ep32->p_align;

 } else {
  if ((eh64 = _libelf_ehdr(e, ELFCLASS64, 0)) == ((void*)0) ||
      (ep64 = _libelf_getphdr(e, ELFCLASS64)) == ((void*)0))
   return (((void*)0));

  ep64 += index;

  *d = *ep64;
 }

 return (d);
}
