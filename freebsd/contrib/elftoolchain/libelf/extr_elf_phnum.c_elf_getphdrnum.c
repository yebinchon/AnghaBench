
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf ;


 int _libelf_getphdrnum (int *,size_t*) ;

int
elf_getphdrnum(Elf *e, size_t *phnum)
{
 return (_libelf_getphdrnum(e, phnum));
}
