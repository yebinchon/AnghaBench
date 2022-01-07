
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {scalar_t__ type; int scn; int name; } ;
struct elfdump {size_t shnum; int snl; struct section* sl; } ;
typedef int Elf_Data ;


 scalar_t__ SHT_REL ;
 scalar_t__ SHT_RELA ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 int * elf_getdata (int ,int *) ;
 int elf_print_rel (struct elfdump*,struct section*,int *) ;
 int elf_print_rela (struct elfdump*,struct section*,int *) ;
 scalar_t__ find_name (struct elfdump*,int ) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
elf_print_reloc(struct elfdump *ed)
{
 struct section *s;
 Elf_Data *data;
 size_t i;
 int elferr;

 for (i = 0; i < ed->shnum; i++) {
  s = &ed->sl[i];
  if ((s->type == SHT_REL || s->type == SHT_RELA) &&
      (STAILQ_EMPTY(&ed->snl) || find_name(ed, s->name))) {
   (void) elf_errno();
   if ((data = elf_getdata(s->scn, ((void*)0))) == ((void*)0)) {
    elferr = elf_errno();
    if (elferr != 0)
     warnx("elf_getdata failed: %s",
         elf_errmsg(elferr));
    continue;
   }
   if (s->type == SHT_REL)
    elf_print_rel(ed, s, data);
   else
    elf_print_rela(ed, s, data);
  }
 }
}
