
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int e_class; } ;
struct TYPE_10__ {int e_shstrndx; int e_shnum; int e_shentsize; int e_phnum; int e_phentsize; int e_ehsize; int e_flags; int e_shoff; int e_phoff; int e_entry; int e_version; int e_machine; int e_type; int e_ident; } ;
struct TYPE_9__ {int e_shstrndx; int e_shnum; int e_shentsize; int e_phnum; int e_phentsize; int e_ehsize; int e_flags; int e_shoff; int e_phoff; int e_entry; int e_version; int e_machine; int e_type; int e_ident; } ;
typedef TYPE_1__ GElf_Ehdr ;
typedef TYPE_1__ Elf64_Ehdr ;
typedef TYPE_3__ Elf32_Ehdr ;
typedef TYPE_4__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 int LIBELF_SET_ERROR (int ,int ) ;
 void* _libelf_ehdr (TYPE_4__*,int,int ) ;
 int assert (int) ;
 int memcpy (int ,int ,int) ;

GElf_Ehdr *
gelf_getehdr(Elf *e, GElf_Ehdr *d)
{
 int ec;
 Elf32_Ehdr *eh32;
 Elf64_Ehdr *eh64;

 if (d == ((void*)0) || e == ((void*)0) ||
     ((ec = e->e_class) != ELFCLASS32 && ec != ELFCLASS64)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 if (ec == ELFCLASS32) {
  if ((eh32 = _libelf_ehdr(e, ELFCLASS32, 0)) == ((void*)0))
   return (((void*)0));

  (void) memcpy(d->e_ident, eh32->e_ident,
      sizeof(eh32->e_ident));
  d->e_type = eh32->e_type;
  d->e_machine = eh32->e_machine;
  d->e_version = eh32->e_version;
  d->e_entry = eh32->e_entry;
  d->e_phoff = eh32->e_phoff;
  d->e_shoff = eh32->e_shoff;
  d->e_flags = eh32->e_flags;
  d->e_ehsize = eh32->e_ehsize;
  d->e_phentsize = eh32->e_phentsize;
  d->e_phnum = eh32->e_phnum;
  d->e_shentsize = eh32->e_shentsize;
  d->e_shnum = eh32->e_shnum;
  d->e_shstrndx = eh32->e_shstrndx;

  return (d);
 }

 assert(ec == ELFCLASS64);

 if ((eh64 = _libelf_ehdr(e, ELFCLASS64, 0)) == ((void*)0))
  return (((void*)0));
 *d = *eh64;

 return (d);
}
