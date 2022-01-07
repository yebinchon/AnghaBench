
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elfdump {size_t shnum; TYPE_1__* sl; int snl; } ;
struct TYPE_2__ {scalar_t__ type; int name; } ;


 scalar_t__ SHT_DYNSYM ;
 scalar_t__ SHT_SYMTAB ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int elf_print_symtab (struct elfdump*,size_t) ;
 scalar_t__ find_name (struct elfdump*,int ) ;

__attribute__((used)) static void
elf_print_symtabs(struct elfdump *ed)
{
 size_t i;

 for (i = 0; i < ed->shnum; i++)
  if ((ed->sl[i].type == SHT_SYMTAB ||
      ed->sl[i].type == SHT_DYNSYM) &&
      (STAILQ_EMPTY(&ed->snl) || find_name(ed, ed->sl[i].name)))
   elf_print_symtab(ed, i);
}
