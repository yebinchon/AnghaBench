
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int e_shstrndx; } ;
struct TYPE_5__ {int sh_name; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef int Elf ;


 int * elf_nextscn (int *,int *) ;
 char* elf_strptr (int *,int ,int ) ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static Elf_Scn *
findelfscn(Elf *elf, GElf_Ehdr *ehdr, const char *secname)
{
 GElf_Shdr shdr;
 Elf_Scn *scn;
 char *name;

 for (scn = ((void*)0); (scn = elf_nextscn(elf, scn)) != ((void*)0); ) {
  if (gelf_getshdr(scn, &shdr) != ((void*)0) && (name =
      elf_strptr(elf, ehdr->e_shstrndx, shdr.sh_name)) != ((void*)0) &&
      strcmp(name, secname) == 0)
   return (scn);
 }

 return (((void*)0));
}
