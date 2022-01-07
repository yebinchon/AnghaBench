
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf ;


 int ARGUMENT ;
 scalar_t__ EV_NONE ;
 scalar_t__ LIBELF_PRIVATE (int ) ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int SEQUENCE ;
 int * _libelf_memory (unsigned char*,size_t,int) ;
 int version ;

Elf *
elf_memory(char *image, size_t sz)
{
 if (LIBELF_PRIVATE(version) == EV_NONE) {
  LIBELF_SET_ERROR(SEQUENCE, 0);
  return (((void*)0));
 }

 if (image == ((void*)0) || sz == 0) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }

 return (_libelf_memory((unsigned char *) image, sz, 1));
}
