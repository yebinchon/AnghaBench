
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct section {int align; int pseudo; int loadable; char const* name; scalar_t__ type; int flags; int * os; scalar_t__ off; int vma; scalar_t__ sz; int * is; } ;
struct elfcopy {int ophnum; scalar_t__ strip; int flags; struct section* strtab; struct section* symtab; scalar_t__* secndx; int eout; int * debuglink; struct section* shstrtab; int ein; } ;
struct TYPE_3__ {scalar_t__ sh_type; scalar_t__ sh_info; int sh_addralign; int sh_flags; scalar_t__ sh_offset; int sh_addr; scalar_t__ sh_size; int sh_name; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef int Elf_Scn ;


 int ELF_T_EHDR ;
 int ELF_T_PHDR ;
 int EV_CURRENT ;
 int EXIT_FAILURE ;
 int RELOCATABLE ;
 int SEC_ADD ;
 int SF_ALLOC ;
 int SF_LOAD ;
 int SHF_ALLOC ;
 int SHF_GROUP ;
 scalar_t__ SHN_UNDEF ;
 scalar_t__ SHT_GROUP ;
 scalar_t__ SHT_NOBITS ;
 scalar_t__ SHT_NOTE ;
 scalar_t__ SHT_REL ;
 scalar_t__ SHT_RELA ;
 scalar_t__ STRIP_ALL ;
 scalar_t__ STRIP_NONDEBUG ;
 int SYMTAB_EXIST ;
 int SYMTAB_INTACT ;
 int add_gnu_debuglink (struct elfcopy*) ;
 void* add_to_inseg_list (struct elfcopy*,struct section*) ;
 struct section* calloc (int,int) ;
 int check_section_rename (struct elfcopy*,struct section*) ;
 int copy_shdr (struct elfcopy*,struct section*,int *,int ,int) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 scalar_t__ elf_getshstrndx (int ,size_t*) ;
 scalar_t__ elf_ndxscn (int *) ;
 int * elf_newscn (int ) ;
 int * elf_nextscn (int ,int *) ;
 char* elf_strptr (int ,size_t,int ) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 scalar_t__ gelf_fsize (int ,int ,int,int ) ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 int get_section_flags (struct elfcopy*,char const*) ;
 int init_shstrtab (struct elfcopy*) ;
 int insert_sections (struct elfcopy*) ;
 int insert_to_sec_list (struct elfcopy*,struct section*,int ) ;
 scalar_t__ is_remove_reloc_sec (struct elfcopy*,scalar_t__) ;
 scalar_t__ is_remove_section (struct elfcopy*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

void
create_scn(struct elfcopy *ecp)
{
 struct section *s;
 const char *name;
 Elf_Scn *is;
 GElf_Shdr ish;
 size_t indx;
 uint64_t oldndx, newndx;
 int elferr, sec_flags, reorder;






 if ((s = calloc(1, sizeof(*s))) == ((void*)0))
  err(EXIT_FAILURE, "calloc failed");
 s->off = 0;
 s->sz = gelf_fsize(ecp->eout, ELF_T_EHDR, 1, EV_CURRENT) +
     gelf_fsize(ecp->eout, ELF_T_PHDR, ecp->ophnum, EV_CURRENT);
 s->align = 1;
 s->pseudo = 1;
 s->loadable = add_to_inseg_list(ecp, s);
 insert_to_sec_list(ecp, s, 0);


 init_shstrtab(ecp);

 if (elf_getshstrndx(ecp->ein, &indx) == 0)
  errx(EXIT_FAILURE, "elf_getshstrndx failed: %s",
      elf_errmsg(-1));

 reorder = 0;
 is = ((void*)0);
 while ((is = elf_nextscn(ecp->ein, is)) != ((void*)0)) {
  if (gelf_getshdr(is, &ish) == ((void*)0))
   errx(EXIT_FAILURE, "gelf_getshdr failed: %s",
       elf_errmsg(-1));
  if ((name = elf_strptr(ecp->ein, indx, ish.sh_name)) == ((void*)0))
   errx(EXIT_FAILURE, "elf_strptr failed: %s",
       elf_errmsg(-1));


  if (is_remove_section(ecp, name))
   continue;





  if (ish.sh_type == SHT_REL || ish.sh_type == SHT_RELA)
   if (ish.sh_info != 0 &&
       is_remove_reloc_sec(ecp, ish.sh_info))
    continue;






  if (ish.sh_type == SHT_GROUP && ecp->strip == STRIP_ALL)
   continue;


  sec_flags = get_section_flags(ecp, name);


  if (strcmp(name, ".shstrtab") != 0) {
   if ((s = calloc(1, sizeof(*s))) == ((void*)0))
    err(EXIT_FAILURE, "calloc failed");
   s->name = name;
   s->is = is;
   s->off = ish.sh_offset;
   s->sz = ish.sh_size;
   s->align = ish.sh_addralign;
   s->type = ish.sh_type;
   s->flags = ish.sh_flags;
   s->vma = ish.sh_addr;
   if (sec_flags &&
       (sec_flags & (SF_LOAD | SF_ALLOC)) == 0)
    s->loadable = 0;
   else {
    s->loadable = add_to_inseg_list(ecp, s);
    if ((ecp->flags & RELOCATABLE) &&
        (ish.sh_flags & SHF_ALLOC))
     s->loadable = 1;
   }
  } else {

   s = ecp->shstrtab;
   s->off = ish.sh_offset;
  }

  oldndx = newndx = SHN_UNDEF;
  if (strcmp(name, ".symtab") != 0 &&
      strcmp(name, ".strtab") != 0) {
   if (!strcmp(name, ".shstrtab")) {





    if (ecp->debuglink != ((void*)0))
     add_gnu_debuglink(ecp);
    if (ecp->flags & SEC_ADD)
     insert_sections(ecp);
   }
    if ((s->os = elf_newscn(ecp->eout)) == ((void*)0))
    errx(EXIT_FAILURE, "elf_newscn failed: %s",
        elf_errmsg(-1));
   if ((newndx = elf_ndxscn(s->os)) == SHN_UNDEF)
    errx(EXIT_FAILURE, "elf_ndxscn failed: %s",
        elf_errmsg(-1));
  }
  if ((oldndx = elf_ndxscn(is)) == SHN_UNDEF)
   errx(EXIT_FAILURE, "elf_ndxscn failed: %s",
       elf_errmsg(-1));
  if (oldndx != SHN_UNDEF && newndx != SHN_UNDEF)
   ecp->secndx[oldndx] = newndx;
  if (ecp->strip == STRIP_NONDEBUG) {
   if (((ish.sh_flags & SHF_ALLOC) ||
       (ish.sh_flags & SHF_GROUP)) &&
       ish.sh_type != SHT_NOTE)
    s->type = SHT_NOBITS;
  }

  check_section_rename(ecp, s);


  if (strcmp(name, ".symtab") != 0 &&
      strcmp(name, ".strtab") != 0 &&
      strcmp(name, ".shstrtab") != 0) {
   copy_shdr(ecp, s, ((void*)0), 0, sec_flags);
   if (reorder)
    ecp->flags &= ~SYMTAB_INTACT;
  } else
   reorder = 1;

  if (strcmp(name, ".symtab") == 0) {
   ecp->flags |= SYMTAB_EXIST;
   ecp->symtab = s;
  }
  if (strcmp(name, ".strtab") == 0)
   ecp->strtab = s;

  insert_to_sec_list(ecp, s, 0);
 }
 elferr = elf_errno();
 if (elferr != 0)
  errx(EXIT_FAILURE, "elf_nextscn failed: %s",
      elf_errmsg(elferr));
}
