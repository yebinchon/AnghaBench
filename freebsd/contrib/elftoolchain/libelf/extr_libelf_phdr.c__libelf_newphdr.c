
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * e_phdr64; int * e_phdr32; } ;
struct TYPE_9__ {size_t e_nphdr; TYPE_1__ e_phdr; } ;
struct TYPE_10__ {TYPE_2__ e_elf; } ;
struct TYPE_11__ {int e_class; scalar_t__ e_version; TYPE_3__ e_u; } ;
typedef int Elf64_Phdr ;
typedef int Elf32_Phdr ;
typedef TYPE_4__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 int ELF_C_SET ;
 int ELF_F_DIRTY ;
 int ELF_T_PHDR ;
 scalar_t__ EV_CURRENT ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int RESOURCE ;
 int SEQUENCE ;
 void* _libelf_ehdr (TYPE_4__*,int,int ) ;
 size_t _libelf_msize (int ,int,scalar_t__) ;
 int assert (int) ;
 void* calloc (size_t,size_t) ;
 int elf_flagphdr (TYPE_4__*,int ,int ) ;
 int free (void*) ;

void *
_libelf_newphdr(Elf *e, int ec, size_t count)
{
 void *ehdr, *newphdr, *oldphdr;
 size_t msz;

 if (e == ((void*)0)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 if ((ehdr = _libelf_ehdr(e, ec, 0)) == ((void*)0)) {
  LIBELF_SET_ERROR(SEQUENCE, 0);
  return (((void*)0));
 }

 assert(e->e_class == ec);
 assert(ec == ELFCLASS32 || ec == ELFCLASS64);
 assert(e->e_version == EV_CURRENT);

 msz = _libelf_msize(ELF_T_PHDR, ec, e->e_version);

 assert(msz > 0);

 newphdr = ((void*)0);
 if (count > 0 && (newphdr = calloc(count, msz)) == ((void*)0)) {
  LIBELF_SET_ERROR(RESOURCE, 0);
  return (((void*)0));
 }

 if (ec == ELFCLASS32) {
  if ((oldphdr = (void *) e->e_u.e_elf.e_phdr.e_phdr32) != ((void*)0))
   free(oldphdr);
  e->e_u.e_elf.e_phdr.e_phdr32 = (Elf32_Phdr *) newphdr;
 } else {
  if ((oldphdr = (void *) e->e_u.e_elf.e_phdr.e_phdr64) != ((void*)0))
   free(oldphdr);
  e->e_u.e_elf.e_phdr.e_phdr64 = (Elf64_Phdr *) newphdr;
 }

 e->e_u.e_elf.e_nphdr = count;

 elf_flagphdr(e, ELF_C_SET, ELF_F_DIRTY);

 return (newphdr);
}
