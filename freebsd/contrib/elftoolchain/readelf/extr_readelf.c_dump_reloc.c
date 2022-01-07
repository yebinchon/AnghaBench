
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {scalar_t__ type; int scn; } ;
struct readelf {size_t shnum; struct section* sl; } ;
typedef int Elf_Data ;


 scalar_t__ SHT_REL ;
 scalar_t__ SHT_RELA ;
 int dump_rel (struct readelf*,struct section*,int *) ;
 int dump_rela (struct readelf*,struct section*,int *) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 int * elf_getdata (int ,int *) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
dump_reloc(struct readelf *re)
{
 struct section *s;
 Elf_Data *d;
 int i, elferr;

 for (i = 0; (size_t)i < re->shnum; i++) {
  s = &re->sl[i];
  if (s->type == SHT_REL || s->type == SHT_RELA) {
   (void) elf_errno();
   if ((d = elf_getdata(s->scn, ((void*)0))) == ((void*)0)) {
    elferr = elf_errno();
    if (elferr != 0)
     warnx("elf_getdata failed: %s",
         elf_errmsg(elferr));
    continue;
   }
   if (s->type == SHT_REL)
    dump_rel(re, s, d);
   else
    dump_rela(re, s, d);
  }
 }
}
