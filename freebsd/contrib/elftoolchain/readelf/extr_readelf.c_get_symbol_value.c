
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct section {scalar_t__ type; int scn; } ;
struct readelf {struct section* sl; } ;
struct TYPE_4__ {int st_value; } ;
typedef TYPE_1__ GElf_Sym ;
typedef int Elf_Data ;


 scalar_t__ SHT_DYNSYM ;
 scalar_t__ SHT_SYMTAB ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 int * elf_getdata (int ,int *) ;
 TYPE_1__* gelf_getsym (int *,int,TYPE_1__*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static uint64_t
get_symbol_value(struct readelf *re, int symtab, int i)
{
 struct section *s;
 GElf_Sym sym;
 Elf_Data *data;
 int elferr;

 s = &re->sl[symtab];
 if (s->type != SHT_SYMTAB && s->type != SHT_DYNSYM)
  return (0);
 (void) elf_errno();
 if ((data = elf_getdata(s->scn, ((void*)0))) == ((void*)0)) {
  elferr = elf_errno();
  if (elferr != 0)
   warnx("elf_getdata failed: %s", elf_errmsg(elferr));
  return (0);
 }
 if (gelf_getsym(data, i, &sym) != &sym)
  return (0);

 return (sym.st_value);
}
