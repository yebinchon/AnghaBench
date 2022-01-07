
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int e_shstrndx; } ;
struct TYPE_5__ {scalar_t__ sh_name; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef int Elf ;


 int elf_ndxscn (int *) ;
 int * elf_nextscn (int *,int *) ;
 char* elf_strptr (int *,int ,size_t) ;
 int elfterminate (char const*,char*,...) ;
 int * gelf_getehdr (int *,TYPE_2__*) ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 scalar_t__ strcmp (char*,char const*) ;

int
findelfsecidx(Elf *elf, const char *file, const char *tofind)
{
 Elf_Scn *scn = ((void*)0);
 GElf_Ehdr ehdr;
 GElf_Shdr shdr;

 if (gelf_getehdr(elf, &ehdr) == ((void*)0))
  elfterminate(file, "Couldn't read ehdr");

 while ((scn = elf_nextscn(elf, scn)) != ((void*)0)) {
  char *name;

  if (gelf_getshdr(scn, &shdr) == ((void*)0)) {
   elfterminate(file,
       "Couldn't read header for section %d",
       elf_ndxscn(scn));
  }

  if ((name = elf_strptr(elf, ehdr.e_shstrndx,
      (size_t)shdr.sh_name)) == ((void*)0)) {
   elfterminate(file,
       "Couldn't get name for section %d",
       elf_ndxscn(scn));
  }

  if (strcmp(name, tofind) == 0)
   return (elf_ndxscn(scn));
 }

 return (-1);
}
