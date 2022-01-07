
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct elfcopy {int * v_grp; int ein; } ;
struct TYPE_4__ {scalar_t__ sh_type; size_t sh_info; int sh_name; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef int Elf_Scn ;


 int BIT_SET (int *,size_t) ;
 int EXIT_FAILURE ;
 scalar_t__ SHT_GROUP ;
 int * calloc (size_t,int) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 scalar_t__ elf_getshstrndx (int ,size_t*) ;
 int * elf_nextscn (int ,int *) ;
 char* elf_strptr (int ,size_t,int ) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 TYPE_1__* gelf_getshdr (int *,TYPE_1__*) ;
 scalar_t__ is_remove_section (struct elfcopy*,char const*) ;
 int warnx (char*) ;

__attribute__((used)) static void
mark_section_group_symbols(struct elfcopy *ecp, size_t sc)
{
 const char *name;
 Elf_Scn *s;
 GElf_Shdr sh;
 size_t indx;
 int elferr;

 ecp->v_grp = calloc((sc + 7) / 8, 1);
 if (ecp->v_grp == ((void*)0))
  err(EXIT_FAILURE, "calloc failed");

 if (elf_getshstrndx(ecp->ein, &indx) == 0)
  errx(EXIT_FAILURE, "elf_getshstrndx failed: %s",
      elf_errmsg(-1));

 s = ((void*)0);
 while ((s = elf_nextscn(ecp->ein, s)) != ((void*)0)) {
  if (gelf_getshdr(s, &sh) != &sh)
   errx(EXIT_FAILURE, "elf_getshdr failed: %s",
       elf_errmsg(-1));

  if (sh.sh_type != SHT_GROUP)
   continue;

  if ((name = elf_strptr(ecp->ein, indx, sh.sh_name)) == ((void*)0))
   errx(EXIT_FAILURE, "elf_strptr failed: %s",
       elf_errmsg(-1));
  if (is_remove_section(ecp, name))
   continue;

  if (sh.sh_info > 0 && sh.sh_info < sc)
   BIT_SET(ecp->v_grp, sh.sh_info);
  else if (sh.sh_info != 0)
   warnx("invalid symbox index");
 }
 elferr = elf_errno();
 if (elferr != 0)
  errx(EXIT_FAILURE, "elf_nextscn failed: %s",
      elf_errmsg(elferr));
}
