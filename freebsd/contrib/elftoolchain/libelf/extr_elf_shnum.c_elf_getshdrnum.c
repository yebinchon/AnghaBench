
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf ;


 int _libelf_getshdrnum (int *,size_t*) ;

int
elf_getshdrnum(Elf *e, size_t *shnum)
{
 return (_libelf_getshdrnum(e, shnum));
}
