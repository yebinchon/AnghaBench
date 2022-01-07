
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ e_type; } ;
struct TYPE_6__ {scalar_t__ sh_size; scalar_t__ sh_addr; int sh_name; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef int Elf ;
typedef scalar_t__ Dwarf_Addr ;


 scalar_t__ ET_DYN ;
 scalar_t__ ET_EXEC ;
 scalar_t__ ET_REL ;
 int EXIT_FAILURE ;
 scalar_t__ elf_errmsg (int) ;
 int elf_errno () ;
 int elf_getshstrndx (int *,size_t*) ;
 int * elf_nextscn (int *,int *) ;
 char* elf_strptr (int *,size_t,int ) ;
 int errx (int ,char*,char const*,char const*) ;
 TYPE_2__* gelf_getehdr (int *,TYPE_2__*) ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 scalar_t__ section_base ;
 int strcmp (char const*,char const*) ;
 int warnx (char*,scalar_t__) ;

__attribute__((used)) static void
find_section_base(const char *exe, Elf *e, const char *section)
{
 Dwarf_Addr off;
 Elf_Scn *scn;
 GElf_Ehdr eh;
 GElf_Shdr sh;
 size_t shstrndx;
 int elferr;
 const char *name;

 if (gelf_getehdr(e, &eh) != &eh) {
  warnx("gelf_getehdr failed: %s", elf_errmsg(-1));
  return;
 }

 if (!elf_getshstrndx(e, &shstrndx)) {
  warnx("elf_getshstrndx failed: %s", elf_errmsg(-1));
  return;
 }

 (void) elf_errno();
 off = 0;
 scn = ((void*)0);
 while ((scn = elf_nextscn(e, scn)) != ((void*)0)) {
  if (gelf_getshdr(scn, &sh) == ((void*)0)) {
   warnx("gelf_getshdr failed: %s", elf_errmsg(-1));
   continue;
  }
  if ((name = elf_strptr(e, shstrndx, sh.sh_name)) == ((void*)0))
   goto next;
  if (!strcmp(section, name)) {
   if (eh.e_type == ET_EXEC || eh.e_type == ET_DYN) {




    section_base = sh.sh_addr;
   } else if (eh.e_type == ET_REL) {





    section_base = off;
   } else
    warnx("unknown e_type %u", eh.e_type);
   return;
  }
 next:
  off += sh.sh_size;
 }
 elferr = elf_errno();
 if (elferr != 0)
  warnx("elf_nextscn failed: %s", elf_errmsg(elferr));

 errx(EXIT_FAILURE, "%s: cannot find section %s", exe, section);
}
