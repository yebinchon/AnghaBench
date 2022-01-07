
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct section {scalar_t__ type; int entsize; int name; } ;
struct TYPE_2__ {scalar_t__ e_machine; } ;
struct elfdump {size_t shnum; TYPE_1__ ehdr; int snl; struct section* sl; } ;


 scalar_t__ EM_ALPHA ;
 scalar_t__ SHT_GNU_HASH ;
 scalar_t__ SHT_HASH ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int elf_print_gnu_hash (struct elfdump*,struct section*) ;
 int elf_print_svr4_hash (struct elfdump*,struct section*) ;
 int elf_print_svr4_hash64 (struct elfdump*,struct section*) ;
 scalar_t__ find_name (struct elfdump*,int ) ;

__attribute__((used)) static void
elf_print_hash(struct elfdump *ed)
{
 struct section *s;
 size_t i;

 for (i = 0; i < ed->shnum; i++) {
  s = &ed->sl[i];
  if ((s->type == SHT_HASH || s->type == SHT_GNU_HASH) &&
      (STAILQ_EMPTY(&ed->snl) || find_name(ed, s->name))) {
   if (s->type == SHT_GNU_HASH)
    elf_print_gnu_hash(ed, s);
   else if (ed->ehdr.e_machine == EM_ALPHA &&
       s->entsize == 8)
    elf_print_svr4_hash64(ed, s);
   else
    elf_print_svr4_hash(ed, s);
  }
 }
}
