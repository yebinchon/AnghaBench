
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf_Scn ;
typedef int Elf_Cmd ;


 unsigned int elf_flagscn (int *,int ,unsigned int) ;

unsigned int
elf_flagshdr(Elf_Scn *s, Elf_Cmd c, unsigned int flags)
{
 return (elf_flagscn(s, c, flags));
}
