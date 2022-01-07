
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {scalar_t__ type; int name; } ;
struct elfdump {size_t shnum; int snl; struct section* sl; } ;


 scalar_t__ SHT_SUNW_verdef ;
 scalar_t__ SHT_SUNW_verneed ;
 int STAILQ_EMPTY (int *) ;
 int elf_print_verdef (struct elfdump*,struct section*) ;
 int elf_print_verneed (struct elfdump*,struct section*) ;
 int find_name (struct elfdump*,int ) ;

__attribute__((used)) static void
elf_print_symver(struct elfdump *ed)
{
 struct section *s;
 size_t i;

 for (i = 0; i < ed->shnum; i++) {
  s = &ed->sl[i];
  if (!STAILQ_EMPTY(&ed->snl) && !find_name(ed, s->name))
   continue;
  if (s->type == SHT_SUNW_verdef)
   elf_print_verdef(ed, s);
  if (s->type == SHT_SUNW_verneed)
   elf_print_verneed(ed, s);
 }
}
