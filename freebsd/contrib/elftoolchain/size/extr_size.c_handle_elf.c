
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char const* ar_name; } ;
struct TYPE_8__ {scalar_t__ e_shnum; scalar_t__ e_type; } ;
typedef int GElf_Shdr ;
typedef TYPE_1__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef int Elf_Cmd ;
typedef TYPE_2__ Elf_Arhdr ;
typedef int Elf ;


 int ELF_C_READ ;
 scalar_t__ ELF_K_ELF ;
 scalar_t__ ELF_K_NONE ;
 scalar_t__ ET_CORE ;
 int RETURN_DATAERR ;
 int RETURN_OK ;
 scalar_t__ STYLE_BERKELEY ;
 int berkeley_calc (int *) ;
 int berkeley_footer (char const*,char const*,char*) ;
 int berkeley_header () ;
 int close (int) ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 TYPE_2__* elf_getarhdr (int *) ;
 scalar_t__ elf_kind (int *) ;
 int elf_next (int *) ;
 int * elf_nextscn (int *,int *) ;
 int * gelf_getehdr (int *,TYPE_1__*) ;
 int * gelf_getshdr (int *,int *) ;
 int handle_core (char const*,int *,TYPE_1__*) ;
 scalar_t__ style ;
 int sysv_calc (int *,TYPE_1__*,int *) ;
 int sysv_footer () ;
 int sysv_header (char const*,TYPE_2__*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
handle_elf(int fd, const char *name)
{
 GElf_Ehdr elfhdr;
 GElf_Shdr shdr;
 Elf *elf, *elf1;
 Elf_Arhdr *arhdr;
 Elf_Scn *scn;
 Elf_Cmd elf_cmd;
 int exit_code;

 elf_cmd = ELF_C_READ;
 elf1 = elf_begin(fd, elf_cmd, ((void*)0));
 while ((elf = elf_begin(fd, elf_cmd, elf1)) != ((void*)0)) {
  arhdr = elf_getarhdr(elf);
  if (elf_kind(elf) == ELF_K_NONE && arhdr == ((void*)0)) {
   (void) elf_end(elf);
   (void) elf_end(elf1);
   (void) close(fd);
   return (RETURN_DATAERR);
  }
  if (elf_kind(elf) != ELF_K_ELF ||
      (gelf_getehdr(elf, &elfhdr) == ((void*)0))) {
   elf_cmd = elf_next(elf);
   (void) elf_end(elf);
   warnx("%s: File format not recognized",
       arhdr != ((void*)0) ? arhdr->ar_name : name);
   continue;
  }

  if (elfhdr.e_shnum == 0 && elfhdr.e_type == ET_CORE) {
   exit_code = handle_core(name, elf, &elfhdr);
   (void) elf_end(elf);
   (void) elf_end(elf1);
   (void) close(fd);
   return (exit_code);
  } else {
   scn = ((void*)0);
   if (style == STYLE_BERKELEY) {
    berkeley_header();
    while ((scn = elf_nextscn(elf, scn)) != ((void*)0)) {
     if (gelf_getshdr(scn, &shdr) != ((void*)0))
      berkeley_calc(&shdr);
    }
   } else {
    sysv_header(name, arhdr);
    scn = ((void*)0);
    while ((scn = elf_nextscn(elf, scn)) != ((void*)0)) {
     if (gelf_getshdr(scn, &shdr) != ((void*)0))
      sysv_calc(elf, &elfhdr, &shdr);
    }
   }
   if (style == STYLE_BERKELEY) {
    if (arhdr != ((void*)0)) {
     berkeley_footer(name, arhdr->ar_name,
         "ex");
    } else {
     berkeley_footer(name, ((void*)0), "ex");
    }
   } else {
    sysv_footer();
   }
  }
  elf_cmd = elf_next(elf);
  (void) elf_end(elf);
 }
 (void) elf_end(elf1);
 (void) close(fd);
 return (RETURN_OK);
}
