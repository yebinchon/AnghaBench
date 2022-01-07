
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct section {size_t sz; int * os; int strtab; int off; } ;
struct elfcopy {int flags; int eout; struct section* shstrtab; } ;
struct TYPE_7__ {int d_align; size_t d_size; int d_version; int d_type; scalar_t__ d_off; void* d_buf; } ;
struct TYPE_6__ {int sh_addralign; size_t sh_size; scalar_t__ sh_link; scalar_t__ sh_info; scalar_t__ sh_entsize; scalar_t__ sh_flags; int sh_type; int sh_offset; scalar_t__ sh_addr; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ Elf_Data ;


 int ELF_T_BYTE ;
 int EV_CURRENT ;
 int EXIT_FAILURE ;
 int SHT_STRTAB ;
 int SYMTAB_EXIST ;
 int elf_errmsg (int) ;
 int elf_ndxscn (int *) ;
 TYPE_2__* elf_newdata (int *) ;
 int * elf_newscn (int ) ;
 int elf_setshstrndx (int ,int ) ;
 char* elftc_string_table_image (int ,size_t*) ;
 int elftc_string_table_remove (int ,char*) ;
 int errx (int ,char*,int ) ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 int gelf_update_shdr (int *,TYPE_1__*) ;
 int insert_to_sec_list (struct elfcopy*,struct section*,int) ;

__attribute__((used)) static void
set_shstrtab(struct elfcopy *ecp)
{
 struct section *s;
 Elf_Data *data;
 GElf_Shdr sh;
 const char *image;
 size_t sz;

 s = ecp->shstrtab;

 if (s->os == ((void*)0)) {

  if ((s->os = elf_newscn(ecp->eout)) == ((void*)0))
   errx(EXIT_FAILURE, "elf_newscn failed: %s",
       elf_errmsg(-1));
  insert_to_sec_list(ecp, s, 1);
 }

 if (gelf_getshdr(s->os, &sh) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getshdr() failed: %s",
      elf_errmsg(-1));
 sh.sh_addr = 0;
 sh.sh_addralign = 1;
 sh.sh_offset = s->off;
 sh.sh_type = SHT_STRTAB;
 sh.sh_flags = 0;
 sh.sh_entsize = 0;
 sh.sh_info = 0;
 sh.sh_link = 0;

 if ((data = elf_newdata(s->os)) == ((void*)0))
  errx(EXIT_FAILURE, "elf_newdata() failed: %s",
      elf_errmsg(-1));





 if (!(ecp->flags & SYMTAB_EXIST)) {
  elftc_string_table_remove(s->strtab, ".symtab");
  elftc_string_table_remove(s->strtab, ".strtab");
 }

 image = elftc_string_table_image(s->strtab, &sz);
 s->sz = sz;

 sh.sh_size = sz;
 if (!gelf_update_shdr(s->os, &sh))
  errx(EXIT_FAILURE, "gelf_update_shdr() failed: %s",
      elf_errmsg(-1));

 data->d_align = 1;
 data->d_buf = (void *)(uintptr_t)image;
 data->d_size = sz;
 data->d_off = 0;
 data->d_type = ELF_T_BYTE;
 data->d_version = EV_CURRENT;

 if (!elf_setshstrndx(ecp->eout, elf_ndxscn(s->os)))
  errx(EXIT_FAILURE, "elf_setshstrndx() failed: %s",
       elf_errmsg(-1));
}
