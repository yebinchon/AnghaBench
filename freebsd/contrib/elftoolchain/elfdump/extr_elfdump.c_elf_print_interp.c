
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct elfdump {int elf; int snl; } ;
struct TYPE_4__ {scalar_t__ p_type; size_t p_offset; } ;
typedef TYPE_1__ GElf_Phdr ;


 int PRT (char*,...) ;
 scalar_t__ PT_INTERP ;
 int STAILQ_EMPTY (int *) ;
 int elf_errmsg (int) ;
 int elf_getphnum (int ,size_t*) ;
 char* elf_rawfile (int ,size_t*) ;
 int * find_name (struct elfdump*,char*) ;
 TYPE_1__* gelf_getphdr (int ,size_t,TYPE_1__*) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
elf_print_interp(struct elfdump *ed)
{
 const char *s;
 GElf_Phdr phdr;
 size_t filesize, i, phnum;

 if (!STAILQ_EMPTY(&ed->snl) && find_name(ed, "PT_INTERP") == ((void*)0))
  return;

 if ((s = elf_rawfile(ed->elf, &filesize)) == ((void*)0)) {
  warnx("elf_rawfile failed: %s", elf_errmsg(-1));
  return;
 }
 if (!elf_getphnum(ed->elf, &phnum)) {
  warnx("elf_getphnum failed: %s", elf_errmsg(-1));
  return;
 }
 for (i = 0; i < phnum; i++) {
  if (gelf_getphdr(ed->elf, i, &phdr) != &phdr) {
   warnx("elf_getphdr failed: %s", elf_errmsg(-1));
   continue;
  }
  if (phdr.p_type == PT_INTERP) {
   if (phdr.p_offset >= filesize) {
    warnx("invalid phdr offset");
    continue;
   }
   PRT("\ninterp:\n");
   PRT("\t%s\n", s + phdr.p_offset);
  }
 }
}
