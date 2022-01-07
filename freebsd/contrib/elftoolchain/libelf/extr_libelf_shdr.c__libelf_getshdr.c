
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ e_kind; int e_class; } ;
struct TYPE_4__ {int s_shdr; TYPE_2__* s_elf; } ;
typedef TYPE_1__ Elf_Scn ;
typedef TYPE_2__ Elf ;


 int ARGUMENT ;
 int CLASS ;
 int ELFCLASSNONE ;
 scalar_t__ ELF_K_ELF ;
 int LIBELF_SET_ERROR (int ,int ) ;

void *
_libelf_getshdr(Elf_Scn *s, int ec)
{
 Elf *e;

 if (s == ((void*)0) || (e = s->s_elf) == ((void*)0) ||
     e->e_kind != ELF_K_ELF) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 if (ec == ELFCLASSNONE)
  ec = e->e_class;

 if (ec != e->e_class) {
  LIBELF_SET_ERROR(CLASS, 0);
  return (((void*)0));
 }

 return ((void *) &s->s_shdr);
}
