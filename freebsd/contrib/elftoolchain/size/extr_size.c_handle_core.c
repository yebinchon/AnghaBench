
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_10__ {scalar_t__ e_shnum; scalar_t__ e_type; scalar_t__ e_phnum; } ;
struct TYPE_9__ {int p_type; } ;
typedef TYPE_1__ GElf_Phdr ;
typedef TYPE_2__ GElf_Ehdr ;
typedef int Elf ;


 scalar_t__ ET_CORE ;





 int PT_NOTE ;



 int RETURN_DATAERR ;
 int RETURN_OK ;
 scalar_t__ STYLE_BERKELEY ;
 scalar_t__ STYLE_SYSV ;
 int berkeley_footer (char*,char const*,char*) ;
 int berkeley_header () ;
 int free (char*) ;
 int * gelf_getphdr (int *,scalar_t__,TYPE_1__*) ;
 int handle_core_note (int *,TYPE_2__*,TYPE_1__*,char**) ;
 int handle_phdr (int *,TYPE_2__*,TYPE_1__*,scalar_t__,char const*) ;
 int printf (char*,...) ;
 scalar_t__ style ;
 int sysv_footer () ;
 int sysv_header (char const*,int *) ;

__attribute__((used)) static int
handle_core(char const *name, Elf *elf, GElf_Ehdr *elfhdr)
{
 GElf_Phdr phdr;
 uint32_t i;
 char *core_cmdline;
 const char *seg_name;

 if (name == ((void*)0) || elf == ((void*)0) || elfhdr == ((void*)0))
  return (RETURN_DATAERR);
 if (elfhdr->e_shnum != 0 || elfhdr->e_type != ET_CORE)
  return (RETURN_DATAERR);

 seg_name = core_cmdline = ((void*)0);
 if (style == STYLE_SYSV)
  sysv_header(name, ((void*)0));
 else
  berkeley_header();

 for (i = 0; i < elfhdr->e_phnum; i++) {
  if (gelf_getphdr(elf, i, &phdr) != ((void*)0)) {
   if (phdr.p_type == PT_NOTE) {
    handle_phdr(elf, elfhdr, &phdr, i, "note");
    handle_core_note(elf, elfhdr, &phdr,
        &core_cmdline);
   } else {
    switch(phdr.p_type) {
    case 130:
     seg_name = "null";
     break;
    case 131:
     seg_name = "load";
     break;
    case 135:
     seg_name = "dynamic";
     break;
    case 132:
     seg_name = "interp";
     break;
    case 128:
     seg_name = "shlib";
     break;
    case 129:
     seg_name = "phdr";
     break;
    case 134:
     seg_name = "eh_frame_hdr";
     break;
    case 133:
     seg_name = "stack";
     break;
    default:
     seg_name = "segment";
    }
    handle_phdr(elf, elfhdr, &phdr, i, seg_name);
   }
  }
 }

 if (style == STYLE_BERKELEY) {
  if (core_cmdline != ((void*)0)) {
   berkeley_footer(core_cmdline, name,
       "core file invoked as");
  } else {
   berkeley_footer(core_cmdline, name, "core file");
  }
 } else {
  sysv_footer();
  if (core_cmdline != ((void*)0)) {
   (void) printf(" (core file invoked as %s)\n\n",
       core_cmdline);
  } else {
   (void) printf(" (core file)\n\n");
  }
 }
 free(core_cmdline);
 return (RETURN_OK);
}
