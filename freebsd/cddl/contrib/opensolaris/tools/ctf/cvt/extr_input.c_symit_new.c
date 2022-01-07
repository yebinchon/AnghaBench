
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sh_link; int sh_size; int sh_entsize; } ;
struct TYPE_5__ {int si_nument; TYPE_4__ si_shdr; int * si_strd; int * si_symd; } ;
typedef TYPE_1__ symit_data_t ;
typedef int Elf_Scn ;
typedef int Elf ;


 void* elf_getdata (int *,int *) ;
 int * elf_getscn (int *,int) ;
 int elfterminate (char const*,char*) ;
 int findelfsecidx (int *,char const*,char*) ;
 int * gelf_getshdr (int *,TYPE_4__*) ;
 TYPE_1__* xcalloc (int) ;

symit_data_t *
symit_new(Elf *elf, const char *file)
{
 symit_data_t *si;
 Elf_Scn *scn;
 int symtabidx;

 if ((symtabidx = findelfsecidx(elf, file, ".symtab")) < 0)
  return (((void*)0));

 si = xcalloc(sizeof (symit_data_t));

 if ((scn = elf_getscn(elf, symtabidx)) == ((void*)0) ||
     gelf_getshdr(scn, &si->si_shdr) == ((void*)0) ||
     (si->si_symd = elf_getdata(scn, ((void*)0))) == ((void*)0))
  elfterminate(file, "Cannot read .symtab");

 if ((scn = elf_getscn(elf, si->si_shdr.sh_link)) == ((void*)0) ||
     (si->si_strd = elf_getdata(scn, ((void*)0))) == ((void*)0))
  elfterminate(file, "Cannot read strings for .symtab");

 si->si_nument = si->si_shdr.sh_size / si->si_shdr.sh_entsize;

 return (si);
}
