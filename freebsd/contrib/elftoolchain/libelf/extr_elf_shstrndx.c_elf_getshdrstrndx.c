
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf ;


 int _libelf_getshdrstrndx (int *,size_t*) ;

int
elf_getshdrstrndx(Elf *e, size_t *strndx)
{
 return (_libelf_getshdrstrndx(e, strndx));
}
