
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ e_kind; int e_class; scalar_t__ e_cmd; } ;
struct TYPE_12__ {int e_shstrndx; int e_shnum; int e_shentsize; int e_phnum; int e_phentsize; int e_ehsize; int e_flags; int e_version; int e_machine; int e_type; int e_ident; } ;
struct TYPE_11__ {int e_shstrndx; int e_shnum; int e_shentsize; int e_phnum; int e_phentsize; int e_ehsize; int e_flags; int e_version; int e_machine; int e_type; int e_ident; } ;
typedef TYPE_1__ GElf_Ehdr ;
typedef TYPE_1__ Elf64_Ehdr ;
typedef TYPE_3__ Elf32_Ehdr ;
typedef TYPE_4__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 scalar_t__ ELF_C_READ ;
 int ELF_C_SET ;
 int ELF_F_DIRTY ;
 scalar_t__ ELF_K_ELF ;
 int LIBELF_COPY_U32 (TYPE_3__*,TYPE_1__*,int ) ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int MODE ;
 void* _libelf_ehdr (TYPE_4__*,int,int ) ;
 int e_entry ;
 int e_phoff ;
 int e_shoff ;
 int elf_flagehdr (TYPE_4__*,int ,int ) ;
 int memcpy (int ,int ,int) ;

int
gelf_update_ehdr(Elf *e, GElf_Ehdr *s)
{
 int ec;
 void *ehdr;
 Elf32_Ehdr *eh32;
 Elf64_Ehdr *eh64;

 if (s== ((void*)0) || e == ((void*)0) || e->e_kind != ELF_K_ELF ||
     ((ec = e->e_class) != ELFCLASS32 && ec != ELFCLASS64)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0);
 }

 if (e->e_cmd == ELF_C_READ) {
  LIBELF_SET_ERROR(MODE, 0);
  return (0);
 }

 if ((ehdr = _libelf_ehdr(e, ec, 0)) == ((void*)0))
  return (0);

 (void) elf_flagehdr(e, ELF_C_SET, ELF_F_DIRTY);

 if (ec == ELFCLASS64) {
  eh64 = (Elf64_Ehdr *) ehdr;
  *eh64 = *s;
  return (1);
 }

 eh32 = (Elf32_Ehdr *) ehdr;

 (void) memcpy(eh32->e_ident, s->e_ident, sizeof(eh32->e_ident));

 eh32->e_type = s->e_type;
 eh32->e_machine = s->e_machine;
 eh32->e_version = s->e_version;
 LIBELF_COPY_U32(eh32, s, e_entry);
 LIBELF_COPY_U32(eh32, s, e_phoff);
 LIBELF_COPY_U32(eh32, s, e_shoff);
 eh32->e_flags = s->e_flags;
 eh32->e_ehsize = s->e_ehsize;
 eh32->e_phentsize = s->e_phentsize;
 eh32->e_phnum = s->e_phnum;
 eh32->e_shentsize = s->e_shentsize;
 eh32->e_shnum = s->e_shnum;
 eh32->e_shstrndx = s->e_shstrndx;

 return (1);
}
