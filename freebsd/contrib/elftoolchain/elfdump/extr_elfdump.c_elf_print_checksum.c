
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfdump {int elf; int snl; } ;


 int PRT (char*,int ) ;
 int STAILQ_EMPTY (int *) ;
 int gelf_checksum (int ) ;

__attribute__((used)) static void
elf_print_checksum(struct elfdump *ed)
{

 if (!STAILQ_EMPTY(&ed->snl))
  return;

 PRT("\nelf checksum: %#lx\n", gelf_checksum(ed->elf));
}
