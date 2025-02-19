
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int s_flags; } ;
typedef TYPE_1__ Elf_Scn ;
typedef scalar_t__ Elf_Cmd ;


 int ARGUMENT ;
 scalar_t__ ELF_C_CLR ;
 scalar_t__ ELF_C_SET ;
 unsigned int ELF_F_DIRTY ;
 unsigned int LIBELF_F_API_MASK ;
 int LIBELF_SET_ERROR (int ,int ) ;

unsigned int
elf_flagscn(Elf_Scn *s, Elf_Cmd c, unsigned int flags)
{
 unsigned int r;

 if (s == ((void*)0))
  return (0);

 if ((c != ELF_C_SET && c != ELF_C_CLR) ||
     (flags & ~ELF_F_DIRTY) != 0) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0);
 }

 if (c == ELF_C_SET)
  r = s->s_flags |= flags;
 else
  r = s->s_flags &= ~flags;
 return (r & LIBELF_F_API_MASK);
}
