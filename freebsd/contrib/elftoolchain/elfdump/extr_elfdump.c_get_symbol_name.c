
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct section {scalar_t__ type; char* name; int link; int scn; } ;
struct elfdump {size_t shnum; int elf; struct section* sl; } ;
typedef int sname ;
struct TYPE_4__ {size_t st_shndx; int st_name; int st_info; } ;
typedef TYPE_1__ GElf_Sym ;
typedef int Elf_Data ;


 scalar_t__ GELF_ST_TYPE (int ) ;
 scalar_t__ SHT_DYNSYM ;
 scalar_t__ SHT_SYMTAB ;
 scalar_t__ STT_SECTION ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 int * elf_getdata (int ,int *) ;
 char* elf_strptr (int ,int ,int ) ;
 TYPE_1__* gelf_getsym (int *,int,TYPE_1__*) ;
 int snprintf (char*,int,char*,char*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static const char *
get_symbol_name(struct elfdump *ed, uint32_t symtab, int i)
{
 static char sname[64];
 struct section *s;
 const char *name;
 GElf_Sym sym;
 Elf_Data *data;
 int elferr;

 if (symtab >= ed->shnum)
  return ("");
 s = &ed->sl[symtab];
 if (s->type != SHT_SYMTAB && s->type != SHT_DYNSYM)
  return ("");
 (void) elf_errno();
 if ((data = elf_getdata(s->scn, ((void*)0))) == ((void*)0)) {
  elferr = elf_errno();
  if (elferr != 0)
   warnx("elf_getdata failed: %s", elf_errmsg(elferr));
  return ("");
 }
 if (gelf_getsym(data, i, &sym) != &sym)
  return ("");
 if (GELF_ST_TYPE(sym.st_info) == STT_SECTION) {
  if (sym.st_shndx < ed->shnum) {
   snprintf(sname, sizeof(sname), "%s (section)",
       ed->sl[sym.st_shndx].name);
   return (sname);
  } else
   return ("");
 }
 if ((name = elf_strptr(ed->elf, s->link, sym.st_name)) == ((void*)0))
  return ("");

 return (name);
}
