
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* e_ehdr64; void* e_ehdr32; } ;
struct TYPE_8__ {TYPE_1__ e_ehdr; } ;
struct TYPE_9__ {TYPE_2__ e_elf; } ;
struct TYPE_10__ {scalar_t__ e_kind; int e_class; TYPE_3__ e_u; } ;
typedef scalar_t__ Elf_Cmd ;
typedef TYPE_4__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 scalar_t__ ELF_C_CLR ;
 scalar_t__ ELF_C_SET ;
 unsigned int ELF_F_DIRTY ;
 scalar_t__ ELF_K_ELF ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int SEQUENCE ;
 unsigned int elf_flagelf (TYPE_4__*,scalar_t__,unsigned int) ;

unsigned int
elf_flagehdr(Elf *e, Elf_Cmd c, unsigned int flags)
{
 int ec;
 void *ehdr;

 if (e == ((void*)0))
  return (0);

 if ((c != ELF_C_SET && c != ELF_C_CLR) ||
     (e->e_kind != ELF_K_ELF) || (flags & ~ELF_F_DIRTY) != 0 ||
     ((ec = e->e_class) != ELFCLASS32 && ec != ELFCLASS64)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0);
 }

 if (ec == ELFCLASS32)
  ehdr = e->e_u.e_elf.e_ehdr.e_ehdr32;
 else
  ehdr = e->e_u.e_elf.e_ehdr.e_ehdr64;

 if (ehdr == ((void*)0)) {
  LIBELF_SET_ERROR(SEQUENCE, 0);
  return (0);
 }

 return (elf_flagelf(e, c, flags));
}
