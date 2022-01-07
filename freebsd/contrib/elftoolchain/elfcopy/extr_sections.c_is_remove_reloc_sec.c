
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct elfcopy {int ein; } ;
struct TYPE_3__ {int sh_name; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef int Elf_Scn ;


 int EXIT_FAILURE ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 int * elf_getscn (int ,int ) ;
 scalar_t__ elf_getshstrndx (int ,size_t*) ;
 char* elf_strptr (int ,size_t,int ) ;
 int errx (int ,char*,int ) ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 scalar_t__ is_remove_section (struct elfcopy*,char const*) ;

int
is_remove_reloc_sec(struct elfcopy *ecp, uint32_t sh_info)
{
 const char *name;
 GElf_Shdr ish;
 Elf_Scn *is;
 size_t indx;
 int elferr;

 if (elf_getshstrndx(ecp->ein, &indx) == 0)
  errx(EXIT_FAILURE, "elf_getshstrndx failed: %s",
      elf_errmsg(-1));

 is = elf_getscn(ecp->ein, sh_info);
 if (is != ((void*)0)) {
  if (gelf_getshdr(is, &ish) == ((void*)0))
   errx(EXIT_FAILURE, "gelf_getshdr failed: %s",
       elf_errmsg(-1));
  if ((name = elf_strptr(ecp->ein, indx, ish.sh_name)) ==
      ((void*)0))
   errx(EXIT_FAILURE, "elf_strptr failed: %s",
       elf_errmsg(-1));
  if (is_remove_section(ecp, name))
   return (1);
  else
   return (0);
 }
 elferr = elf_errno();
 if (elferr != 0)
  errx(EXIT_FAILURE, "elf_nextscn failed: %s",
      elf_errmsg(elferr));


 return (1);
}
