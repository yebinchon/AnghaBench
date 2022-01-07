
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uintmax_t ;
struct elfdump {int flags; int snl; int elf; } ;
struct TYPE_4__ {int p_flags; scalar_t__ p_align; scalar_t__ p_memsz; scalar_t__ p_filesz; scalar_t__ p_paddr; scalar_t__ p_vaddr; scalar_t__ p_offset; int p_type; } ;
typedef TYPE_1__ GElf_Phdr ;


 int PRT (char*,...) ;
 int SOLARIS_FMT ;
 int STAILQ_EMPTY (int *) ;
 int elf_errmsg (int) ;
 scalar_t__ elf_getphnum (int ,size_t*) ;
 size_t elf_phdr_type_str (int ) ;
 int * find_name (struct elfdump*,size_t) ;
 TYPE_1__* gelf_getphdr (int ,size_t,TYPE_1__*) ;
 size_t* p_flags ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
elf_print_phdr(struct elfdump *ed)
{
 GElf_Phdr ph;
 size_t phnum, i;
 int header;

 if (elf_getphnum(ed->elf, &phnum) == 0) {
  warnx("elf_getphnum failed: %s", elf_errmsg(-1));
  return;
 }
 header = 0;
 for (i = 0; i < phnum; i++) {
  if (gelf_getphdr(ed->elf, i, &ph) != &ph) {
   warnx("elf_getphdr failed: %s", elf_errmsg(-1));
   continue;
  }
  if (!STAILQ_EMPTY(&ed->snl) &&
      find_name(ed, elf_phdr_type_str(ph.p_type)) == ((void*)0))
   continue;
  if (ed->flags & SOLARIS_FMT) {
   PRT("\nProgram Header[%zu]:\n", i);
   PRT("    p_vaddr:      %#-14jx", (uintmax_t)ph.p_vaddr);
   PRT("  p_flags:    [ %s ]\n",
       p_flags[ph.p_flags & 0x7]);
   PRT("    p_paddr:      %#-14jx", (uintmax_t)ph.p_paddr);
   PRT("  p_type:     [ %s ]\n",
       elf_phdr_type_str(ph.p_type));
   PRT("    p_filesz:     %#-14jx",
       (uintmax_t)ph.p_filesz);
   PRT("  p_memsz:    %#jx\n", (uintmax_t)ph.p_memsz);
   PRT("    p_offset:     %#-14jx",
       (uintmax_t)ph.p_offset);
   PRT("  p_align:    %#jx\n", (uintmax_t)ph.p_align);
  } else {
   if (!header) {
    PRT("\nprogram header:\n");
    header = 1;
   }
   PRT("\n");
   PRT("entry: %zu\n", i);
   PRT("\tp_type: %s\n", elf_phdr_type_str(ph.p_type));
   PRT("\tp_offset: %ju\n", (uintmax_t)ph.p_offset);
   PRT("\tp_vaddr: %#jx\n", (uintmax_t)ph.p_vaddr);
   PRT("\tp_paddr: %#jx\n", (uintmax_t)ph.p_paddr);
   PRT("\tp_filesz: %ju\n", (uintmax_t)ph.p_filesz);
   PRT("\tp_memsz: %ju\n", (uintmax_t)ph.p_memsz);
   PRT("\tp_flags: %s\n", p_flags[ph.p_flags & 0x7]);
   PRT("\tp_align: %ju\n", (uintmax_t)ph.p_align);
  }
 }
}
