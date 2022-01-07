
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {scalar_t__ name; } ;
struct elfdump {size_t shnum; int snl; struct section* sl; } ;


 scalar_t__ STAILQ_EMPTY (int *) ;
 int elf_print_got_section (struct elfdump*,struct section*) ;
 scalar_t__ find_name (struct elfdump*,scalar_t__) ;
 int strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static void
elf_print_got(struct elfdump *ed)
{
 struct section *s;
 size_t i;

 if (!STAILQ_EMPTY(&ed->snl))
  return;

 s = ((void*)0);
 for (i = 0; i < ed->shnum; i++) {
  s = &ed->sl[i];
  if (s->name && !strncmp(s->name, ".got", 4) &&
      (STAILQ_EMPTY(&ed->snl) || find_name(ed, s->name)))
   elf_print_got_section(ed, s);
 }
}
