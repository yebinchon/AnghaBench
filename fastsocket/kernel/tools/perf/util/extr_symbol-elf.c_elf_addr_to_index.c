
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sh_addr; scalar_t__ sh_size; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef scalar_t__ GElf_Addr ;
typedef int Elf_Scn ;
typedef int Elf ;


 int * elf_nextscn (int *,int *) ;
 int gelf_getshdr (int *,TYPE_1__*) ;

__attribute__((used)) static size_t elf_addr_to_index(Elf *elf, GElf_Addr addr)
{
 Elf_Scn *sec = ((void*)0);
 GElf_Shdr shdr;
 size_t cnt = 1;

 while ((sec = elf_nextscn(elf, sec)) != ((void*)0)) {
  gelf_getshdr(sec, &shdr);

  if ((addr >= shdr.sh_addr) &&
      (addr < (shdr.sh_addr + shdr.sh_size)))
   return cnt;

  ++cnt;
 }

 return -1;
}
