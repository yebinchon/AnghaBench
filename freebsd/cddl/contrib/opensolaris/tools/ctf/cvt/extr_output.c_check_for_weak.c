
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uchar_t ;
struct TYPE_10__ {scalar_t__ d_buf; } ;
struct TYPE_9__ {int st_name; scalar_t__ st_value; scalar_t__ st_size; scalar_t__ st_shndx; scalar_t__ st_info; } ;
typedef TYPE_1__ GElf_Sym ;
typedef TYPE_2__ Elf_Data ;


 scalar_t__ GELF_ST_BIND (scalar_t__) ;
 scalar_t__ GELF_ST_TYPE (scalar_t__) ;
 scalar_t__ STB_LOCAL ;
 scalar_t__ STB_WEAK ;
 scalar_t__ STT_FILE ;
 int * gelf_getsym (TYPE_2__*,int,TYPE_1__*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
check_for_weak(GElf_Sym *weak, char const *weakfile,
    Elf_Data *data, int nent, Elf_Data *strdata,
    GElf_Sym *retsym, char **curfilep)
{
 char *curfile = ((void*)0);
 char *tmpfile1 = ((void*)0);
 GElf_Sym tmpsym;
 int candidate = 0;
 int i;
 tmpsym.st_info = 0;
 tmpsym.st_name = 0;

 if (GELF_ST_BIND(weak->st_info) != STB_WEAK)
  return (0);

 for (i = 0; i < nent; i++) {
  GElf_Sym sym;
  uchar_t type;

  if (gelf_getsym(data, i, &sym) == ((void*)0))
   continue;

  type = GELF_ST_TYPE(sym.st_info);

  if (type == STT_FILE)
   curfile = (char *)strdata->d_buf + sym.st_name;

  if (GELF_ST_TYPE(weak->st_info) != type ||
      weak->st_value != sym.st_value)
   continue;

  if (weak->st_size != sym.st_size)
   continue;

  if (GELF_ST_BIND(sym.st_info) == STB_WEAK)
   continue;

  if (sym.st_shndx != weak->st_shndx)
   continue;

  if (GELF_ST_BIND(sym.st_info) == STB_LOCAL &&
      (curfile == ((void*)0) || weakfile == ((void*)0) ||
      strcmp(curfile, weakfile) != 0)) {
   candidate = 1;
   tmpfile1 = curfile;
   tmpsym = sym;
   continue;
  }

  *curfilep = curfile;
  *retsym = sym;
  return (1);
 }

 if (candidate) {
  *curfilep = tmpfile1;
  *retsym = tmpsym;
  return (1);
 }

 return (0);
}
