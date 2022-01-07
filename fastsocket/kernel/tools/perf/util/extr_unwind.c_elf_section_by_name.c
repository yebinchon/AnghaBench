
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int e_shstrndx; } ;
struct TYPE_6__ {int sh_name; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef int Elf ;


 int * elf_nextscn (int *,int *) ;
 char* elf_strptr (int *,int ,int ) ;
 int gelf_getshdr (int *,TYPE_1__*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static Elf_Scn *elf_section_by_name(Elf *elf, GElf_Ehdr *ep,
        GElf_Shdr *shp, const char *name)
{
 Elf_Scn *sec = ((void*)0);

 while ((sec = elf_nextscn(elf, sec)) != ((void*)0)) {
  char *str;

  gelf_getshdr(sec, shp);
  str = elf_strptr(elf, ep->e_shstrndx, shp->sh_name);
  if (!strcmp(name, str))
   break;
 }

 return sec;
}
