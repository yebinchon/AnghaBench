
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct section {scalar_t__ type; char const* name; scalar_t__ link; int scn; } ;
struct readelf {scalar_t__ shnum; int elf; struct section* sl; } ;
struct TYPE_4__ {scalar_t__ st_shndx; int st_name; int st_info; } ;
typedef TYPE_1__ GElf_Sym ;
typedef int Elf_Data ;


 scalar_t__ GELF_ST_TYPE (int ) ;
 scalar_t__ SHT_DYNSYM ;
 scalar_t__ SHT_SYMTAB ;
 scalar_t__ STT_SECTION ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 int * elf_getdata (int ,int *) ;
 char* elf_strptr (int ,scalar_t__,int ) ;
 TYPE_1__* gelf_getsym (int *,int,TYPE_1__*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static const char *
get_symbol_name(struct readelf *re, int symtab, int i)
{
 struct section *s;
 const char *name;
 GElf_Sym sym;
 Elf_Data *data;
 int elferr;

 s = &re->sl[symtab];
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
  if (sym.st_shndx < re->shnum &&
      re->sl[sym.st_shndx].name != ((void*)0))
   return (re->sl[sym.st_shndx].name);
  return ("");
 }
 if (s->link >= re->shnum ||
     (name = elf_strptr(re->elf, s->link, sym.st_name)) == ((void*)0))
  return ("");

 return (name);
}
