
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct bsdar {int dummy; } ;
struct TYPE_13__ {int d_size; } ;
struct TYPE_12__ {scalar_t__ sh_type; size_t sh_size; int sh_entsize; int sh_name; } ;
struct TYPE_11__ {scalar_t__ st_shndx; int st_name; int st_info; } ;
typedef TYPE_1__ GElf_Sym ;
typedef TYPE_2__ GElf_Shdr ;
typedef int Elf_Scn ;
typedef TYPE_3__ Elf_Data ;
typedef int Elf ;


 scalar_t__ ELF_K_ELF ;
 scalar_t__ GELF_ST_BIND (int ) ;
 scalar_t__ SHN_UNDEF ;
 scalar_t__ SHT_SYMTAB ;
 scalar_t__ STB_GLOBAL ;
 scalar_t__ STB_WEAK ;
 int add_to_ar_sym_table (struct bsdar*,char*) ;
 int bsdar_warnc (struct bsdar*,int ,char*,...) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_3__* elf_getdata (int *,TYPE_3__*) ;
 scalar_t__ elf_getshstrndx (int *,size_t*) ;
 scalar_t__ elf_kind (int *) ;
 int elf_ndxscn (int *) ;
 int * elf_nextscn (int *,int *) ;
 char* elf_strptr (int *,int,int ) ;
 TYPE_2__* gelf_getshdr (int *,TYPE_2__*) ;
 TYPE_1__* gelf_getsym (TYPE_3__*,int,TYPE_1__*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
create_symtab_entry(struct bsdar *bsdar, Elf *e)
{
 Elf_Scn *scn;
 GElf_Shdr shdr;
 GElf_Sym sym;
 Elf_Data *data;
 char *name;
 size_t n, shstrndx;
 int elferr, tabndx, len, i;

 if (elf_kind(e) != ELF_K_ELF) {

  return;
 }
 if (elf_getshstrndx(e, &shstrndx) == 0) {
  bsdar_warnc(bsdar, 0, "elf_getshstrndx failed: %s",
       elf_errmsg(-1));
  return;
 }

 tabndx = -1;
 scn = ((void*)0);
 while ((scn = elf_nextscn(e, scn)) != ((void*)0)) {
  if (gelf_getshdr(scn, &shdr) != &shdr) {
   bsdar_warnc(bsdar, 0,
       "elf_getshdr failed: %s", elf_errmsg(-1));
   continue;
  }
  if ((name = elf_strptr(e, shstrndx, shdr.sh_name)) == ((void*)0)) {
   bsdar_warnc(bsdar, 0,
       "elf_strptr failed: %s", elf_errmsg(-1));
   continue;
  }
  if (strcmp(name, ".strtab") == 0) {
   tabndx = elf_ndxscn(scn);
   break;
  }
 }
 elferr = elf_errno();
 if (elferr != 0)
  bsdar_warnc(bsdar, 0, "elf_nextscn failed: %s",
       elf_errmsg(elferr));
 if (tabndx == -1) {
  bsdar_warnc(bsdar, 0, "can't find .strtab section");
  return;
 }

 scn = ((void*)0);
 while ((scn = elf_nextscn(e, scn)) != ((void*)0)) {
  if (gelf_getshdr(scn, &shdr) != &shdr) {
   bsdar_warnc(bsdar, 0, "elf_getshdr failed: %s",
       elf_errmsg(-1));
   continue;
  }
  if (shdr.sh_type != SHT_SYMTAB)
   continue;

  data = ((void*)0);
  n = 0;
  while (n < shdr.sh_size &&
      (data = elf_getdata(scn, data)) != ((void*)0)) {
   len = data->d_size / shdr.sh_entsize;
   for (i = 0; i < len; i++) {
    if (gelf_getsym(data, i, &sym) != &sym) {
     bsdar_warnc(bsdar, 0,
         "gelf_getsym failed: %s",
          elf_errmsg(-1));
     continue;
    }


    if (GELF_ST_BIND(sym.st_info) != STB_GLOBAL &&
        GELF_ST_BIND(sym.st_info) != STB_WEAK)
     continue;


    if (sym.st_shndx == SHN_UNDEF)
     continue;

    if ((name = elf_strptr(e, tabndx,
        sym.st_name)) == ((void*)0)) {
     bsdar_warnc(bsdar, 0,
         "elf_strptr failed: %s",
          elf_errmsg(-1));
     continue;
    }

    add_to_ar_sym_table(bsdar, name);
   }
  }
 }
 elferr = elf_errno();
 if (elferr != 0)
  bsdar_warnc(bsdar, 0, "elf_nextscn failed: %s",
       elf_errmsg(elferr));
}
