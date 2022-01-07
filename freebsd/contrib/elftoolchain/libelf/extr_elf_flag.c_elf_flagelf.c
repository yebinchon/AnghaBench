
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ e_kind; scalar_t__ e_cmd; unsigned int e_flags; } ;
typedef scalar_t__ Elf_Cmd ;
typedef TYPE_1__ Elf ;


 int ARGUMENT ;
 scalar_t__ ELF_C_CLR ;
 scalar_t__ ELF_C_SET ;
 scalar_t__ ELF_C_WRITE ;
 unsigned int ELF_F_ARCHIVE ;
 unsigned int ELF_F_ARCHIVE_SYSV ;
 unsigned int ELF_F_DIRTY ;
 unsigned int ELF_F_LAYOUT ;
 scalar_t__ ELF_K_ELF ;
 unsigned int LIBELF_F_API_MASK ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int MODE ;

unsigned int
elf_flagelf(Elf *e, Elf_Cmd c, unsigned int flags)
{
 unsigned int r;

 if (e == ((void*)0))
  return (0);

 if ((c != ELF_C_SET && c != ELF_C_CLR) ||
     (e->e_kind != ELF_K_ELF) ||
     (flags & ~(ELF_F_ARCHIVE | ELF_F_ARCHIVE_SYSV |
     ELF_F_DIRTY | ELF_F_LAYOUT)) != 0) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0);
 }

 if ((flags & ELF_F_ARCHIVE_SYSV) && (flags & ELF_F_ARCHIVE) == 0) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0);
 }

 if ((flags & ELF_F_ARCHIVE) && e->e_cmd != ELF_C_WRITE) {
  LIBELF_SET_ERROR(MODE, 0);
  return (0);
 }

 if (c == ELF_C_SET)
  r = e->e_flags |= flags;
 else
  r = e->e_flags &= ~flags;
 return (r & LIBELF_F_API_MASK);
}
