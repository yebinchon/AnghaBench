
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ e_kind; int e_class; } ;
typedef TYPE_1__ Elf ;


 int ARGUMENT ;
 int ELFCLASS32 ;
 int ELFCLASS64 ;
 scalar_t__ ELF_K_ELF ;
 int LIBELF_SET_ERROR (int ,int ) ;
 void* _libelf_ehdr (TYPE_1__*,int,int ) ;
 int _libelf_setshstrndx (TYPE_1__*,void*,int,size_t) ;

int
elf_setshstrndx(Elf *e, size_t strndx)
{
 void *eh;
 int ec;

 if (e == ((void*)0) || e->e_kind != ELF_K_ELF ||
     ((ec = e->e_class) != ELFCLASS32 && ec != ELFCLASS64) ||
     ((eh = _libelf_ehdr(e, ec, 0)) == ((void*)0))) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0);
 }

 return (_libelf_setshstrndx(e, eh, ec, strndx));
}
