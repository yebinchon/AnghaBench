
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf ;


 int ELFCLASS64 ;
 long _libelf_checksum (int *,int ) ;

long
elf64_checksum(Elf *e)
{
 return (_libelf_checksum(e, ELFCLASS64));
}
