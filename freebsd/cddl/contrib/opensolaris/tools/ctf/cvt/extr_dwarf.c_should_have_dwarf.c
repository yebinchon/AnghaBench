
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int boolean_t ;
struct TYPE_6__ {scalar_t__ sh_type; size_t sh_size; size_t sh_entsize; int sh_link; } ;
struct TYPE_5__ {int st_name; int st_info; } ;
typedef TYPE_1__ GElf_Sym ;
typedef TYPE_2__ GElf_Shdr ;
typedef int Elf_Scn ;
typedef int Elf_Data ;
typedef int Elf ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ GELF_ST_TYPE (int ) ;
 scalar_t__ SHT_SYMTAB ;
 scalar_t__ STT_FUNC ;
 scalar_t__ STT_OBJECT ;
 scalar_t__ STT_TLS ;
 int * elf_getdata (int *,int *) ;
 int * elf_nextscn (int *,int *) ;
 char* elf_strptr (int *,int ,int ) ;
 int gelf_getshdr (int *,TYPE_2__*) ;
 int gelf_getsym (int *,size_t,TYPE_1__*) ;
 scalar_t__ strcmp (char*,char*) ;
 int terminate (char*) ;

__attribute__((used)) static boolean_t
should_have_dwarf(Elf *elf)
{
 Elf_Scn *scn = ((void*)0);
 Elf_Data *data = ((void*)0);
 GElf_Shdr shdr;
 GElf_Sym sym;
 uint32_t symdx = 0;
 size_t nsyms = 0;
 boolean_t found = B_FALSE;

 while ((scn = elf_nextscn(elf, scn)) != ((void*)0)) {
  gelf_getshdr(scn, &shdr);

  if (shdr.sh_type == SHT_SYMTAB) {
   found = B_TRUE;
   break;
  }
 }

 if (!found)
  terminate("cannot convert stripped objects\n");

 data = elf_getdata(scn, ((void*)0));
 nsyms = shdr.sh_size / shdr.sh_entsize;

 for (symdx = 0; symdx < nsyms; symdx++) {
  gelf_getsym(data, symdx, &sym);

  if ((GELF_ST_TYPE(sym.st_info) == STT_FUNC) ||
      (GELF_ST_TYPE(sym.st_info) == STT_TLS) ||
      (GELF_ST_TYPE(sym.st_info) == STT_OBJECT)) {
   char *name;

   name = elf_strptr(elf, shdr.sh_link, sym.st_name);


   if ((strcmp(name, "Bbss.bss") != 0) &&
       (strcmp(name, "Ttbss.bss") != 0) &&
       (strcmp(name, "Ddata.data") != 0) &&
       (strcmp(name, "Ttdata.data") != 0) &&
       (strcmp(name, "Drodata.rodata") != 0))
    return (B_TRUE);
  }
 }

 return (B_FALSE);
}
