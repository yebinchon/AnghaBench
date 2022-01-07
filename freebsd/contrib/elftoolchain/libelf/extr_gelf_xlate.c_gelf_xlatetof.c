
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int e_class; } ;
typedef int Elf_Data ;
typedef TYPE_1__ Elf ;


 int ARGUMENT ;
 int ELF_TOFILE ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int _libelf_elfmachine (TYPE_1__*) ;
 int * _libelf_xlate (int *,int const*,unsigned int,int ,int ,int ) ;

Elf_Data *
gelf_xlatetof(Elf *e, Elf_Data *dst, const Elf_Data *src,
    unsigned int encoding)
{
 if (e != ((void*)0))
  return (_libelf_xlate(dst, src, encoding, e->e_class,
      _libelf_elfmachine(e), ELF_TOFILE));
 LIBELF_SET_ERROR(ARGUMENT, 0);
 return (((void*)0));
}
