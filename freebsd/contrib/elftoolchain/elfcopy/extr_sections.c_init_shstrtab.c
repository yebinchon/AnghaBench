
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct section {char* name; int align; int strtab; scalar_t__ vma; int type; scalar_t__ loadable; scalar_t__ sz; int * is; } ;
struct elfcopy {struct section* shstrtab; int ein; } ;
struct TYPE_4__ {size_t sh_size; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef int Elf_Scn ;


 int EXIT_FAILURE ;
 int SHT_STRTAB ;
 int add_to_shstrtab (struct elfcopy*,char*) ;
 struct section* calloc (int,int) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 int * elf_getscn (int ,size_t) ;
 scalar_t__ elf_getshdrstrndx (int ,size_t*) ;
 int elftc_string_table_create (size_t) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 TYPE_1__* gelf_getshdr (int *,TYPE_1__*) ;

void
init_shstrtab(struct elfcopy *ecp)
{
 Elf_Scn *shstrtab;
 GElf_Shdr shdr;
 struct section *s;
 size_t indx, sizehint;

 if (elf_getshdrstrndx(ecp->ein, &indx) == 0) {
  shstrtab = elf_getscn(ecp->ein, indx);
  if (shstrtab == ((void*)0))
   errx(EXIT_FAILURE, "elf_getscn failed: %s",
       elf_errmsg(-1));
  if (gelf_getshdr(shstrtab, &shdr) != &shdr)
   errx(EXIT_FAILURE, "gelf_getshdr failed: %s",
       elf_errmsg(-1));
  sizehint = shdr.sh_size;
 } else {

  (void)elf_errno();
  sizehint = 0;
 }

 if ((ecp->shstrtab = calloc(1, sizeof(*ecp->shstrtab))) == ((void*)0))
  err(EXIT_FAILURE, "calloc failed");
 s = ecp->shstrtab;
 s->name = ".shstrtab";
 s->is = ((void*)0);
 s->sz = 0;
 s->align = 1;
 s->loadable = 0;
 s->type = SHT_STRTAB;
 s->vma = 0;
 s->strtab = elftc_string_table_create(sizehint);

 add_to_shstrtab(ecp, "");
 add_to_shstrtab(ecp, ".symtab");
 add_to_shstrtab(ecp, ".strtab");
 add_to_shstrtab(ecp, ".shstrtab");
}
