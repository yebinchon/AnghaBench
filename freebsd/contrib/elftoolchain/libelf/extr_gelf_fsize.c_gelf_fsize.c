
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ e_class; } ;
typedef int Elf_Type ;
typedef TYPE_1__ Elf ;


 int ARGUMENT ;
 scalar_t__ ELFCLASS32 ;
 scalar_t__ ELFCLASS64 ;
 int LIBELF_SET_ERROR (int ,int ) ;
 size_t _libelf_fsize (int ,scalar_t__,unsigned int,size_t) ;

size_t
gelf_fsize(Elf *e, Elf_Type t, size_t c, unsigned int v)
{

 if (e == ((void*)0)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (0);
 }

 if (e->e_class == ELFCLASS32 || e->e_class == ELFCLASS64)
  return (_libelf_fsize(t, e->e_class, v, c));

 LIBELF_SET_ERROR(ARGUMENT, 0);
 return (0);
}
