
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct section {scalar_t__ type; scalar_t__ sz; int nocopy; char const* name; int os; int * buf; int align; int off; int vma; int is; } ;
struct elfcopy {int dummy; } ;
typedef int ish ;
struct TYPE_6__ {scalar_t__ sh_type; scalar_t__ sh_size; int sh_flags; int sh_entsize; int sh_addralign; int sh_info; int sh_link; int sh_offset; int sh_addr; } ;
typedef TYPE_1__ GElf_Shdr ;


 int EXIT_FAILURE ;
 int SF_ALLOC ;
 int SF_CODE ;
 int SF_CONTENTS ;
 int SF_READONLY ;
 int SHF_ALLOC ;
 int SHF_EXECINSTR ;
 int SHF_INFO_LINK ;
 int SHF_WRITE ;
 scalar_t__ SHT_NOBITS ;
 scalar_t__ SHT_PROGBITS ;
 scalar_t__ SHT_REL ;
 scalar_t__ SHT_RELA ;
 int add_to_shstrtab (struct elfcopy*,char const*) ;
 int * calloc (int,scalar_t__) ;
 int elf_errmsg (int) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 int * gelf_getshdr (int ,TYPE_1__*) ;
 int gelf_update_shdr (int ,TYPE_1__*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

void
copy_shdr(struct elfcopy *ecp, struct section *s, const char *name, int copy,
    int sec_flags)
{
 GElf_Shdr ish, osh;

 if (gelf_getshdr(s->is, &ish) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getshdr() failed: %s",
      elf_errmsg(-1));
 if (gelf_getshdr(s->os, &osh) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getshdr() failed: %s",
      elf_errmsg(-1));

 if (copy)
  (void) memcpy(&osh, &ish, sizeof(ish));
 else {
  osh.sh_type = s->type;
  osh.sh_addr = s->vma;
  osh.sh_offset = s->off;
  osh.sh_size = s->sz;
  osh.sh_link = ish.sh_link;
  osh.sh_info = ish.sh_info;
  osh.sh_addralign = s->align;
  osh.sh_entsize = ish.sh_entsize;

  if (sec_flags) {
   osh.sh_flags = 0;
   if (sec_flags & SF_ALLOC)
    osh.sh_flags |= SHF_ALLOC;
   if ((sec_flags & SF_READONLY) == 0)
    osh.sh_flags |= SHF_WRITE;
   if (sec_flags & SF_CODE)
    osh.sh_flags |= SHF_EXECINSTR;
   if ((sec_flags & SF_CONTENTS) &&
       s->type == SHT_NOBITS && s->sz > 0) {




    osh.sh_type = s->type = SHT_PROGBITS;
    if ((s->buf = calloc(1, s->sz)) == ((void*)0))
     err(EXIT_FAILURE, "malloc failed");
    s->nocopy = 1;
   }
  } else {
   osh.sh_flags = ish.sh_flags;







   if (ish.sh_type == SHT_REL || ish.sh_type == SHT_RELA)
    osh.sh_flags |= SHF_INFO_LINK;
  }
 }

 if (name == ((void*)0))
  add_to_shstrtab(ecp, s->name);
 else
  add_to_shstrtab(ecp, name);

 if (!gelf_update_shdr(s->os, &osh))
  errx(EXIT_FAILURE, "elf_update_shdr failed: %s",
      elf_errmsg(-1));
}
