
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf ;


 int ELF_C_READ ;
 scalar_t__ EV_NONE ;
 scalar_t__ LIBELF_PRIVATE (int ) ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int SEQUENCE ;
 int * _libelf_open_object (int,int ,int ) ;
 int version ;

Elf *
elf_open(int fd)
{
 if (LIBELF_PRIVATE(version) == EV_NONE) {
  LIBELF_SET_ERROR(SEQUENCE, 0);
  return (((void*)0));
 }

 return (_libelf_open_object(fd, ELF_C_READ, 0));
}
