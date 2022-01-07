
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct section {char const* name; char* newname; int loadable; int nocopy; scalar_t__ align; scalar_t__ vma; scalar_t__ type; int * os; int * is; scalar_t__ sz; scalar_t__ off; } ;
struct elfcopy {int flags; int eout; } ;
struct TYPE_7__ {int d_version; int d_type; scalar_t__ d_size; void* d_buf; scalar_t__ d_off; scalar_t__ d_align; } ;
struct TYPE_6__ {scalar_t__ sh_addralign; scalar_t__ sh_addr; scalar_t__ sh_type; scalar_t__ sh_flags; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef int Elf_Type ;
typedef int Elf_Scn ;
typedef TYPE_2__ Elf_Data ;


 int EV_CURRENT ;
 int EXIT_FAILURE ;
 int SYMTAB_INTACT ;
 int add_to_shstrtab (struct elfcopy*,char const*) ;
 struct section* calloc (int,int) ;
 int elf_errmsg (int) ;
 TYPE_2__* elf_newdata (int *) ;
 int * elf_newscn (int ) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 int gelf_update_shdr (int *,TYPE_1__*) ;
 int insert_to_sec_list (struct elfcopy*,struct section*,int) ;

struct section *
create_external_section(struct elfcopy *ecp, const char *name, char *newname,
    void *buf, uint64_t size, uint64_t off, uint64_t stype, Elf_Type dtype,
    uint64_t flags, uint64_t align, uint64_t vma, int loadable)
{
 struct section *s;
 Elf_Scn *os;
 Elf_Data *od;
 GElf_Shdr osh;

 if ((os = elf_newscn(ecp->eout)) == ((void*)0))
  errx(EXIT_FAILURE, "elf_newscn() failed: %s",
      elf_errmsg(-1));
 if ((s = calloc(1, sizeof(*s))) == ((void*)0))
  err(EXIT_FAILURE, "calloc failed");
 s->name = name;
 s->newname = newname;
 s->off = off;
 s->sz = size;
 s->vma = vma;
 s->align = align;
 s->loadable = loadable;
 s->is = ((void*)0);
 s->os = os;
 s->type = stype;
 s->nocopy = 1;
 insert_to_sec_list(ecp, s, 1);

 if (gelf_getshdr(os, &osh) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getshdr() failed: %s",
      elf_errmsg(-1));
 osh.sh_flags = flags;
 osh.sh_type = s->type;
 osh.sh_addr = s->vma;
 osh.sh_addralign = s->align;
 if (!gelf_update_shdr(os, &osh))
  errx(EXIT_FAILURE, "gelf_update_shdr() failed: %s",
      elf_errmsg(-1));
 add_to_shstrtab(ecp, name);

 if (buf != ((void*)0) && size != 0) {
  if ((od = elf_newdata(os)) == ((void*)0))
   errx(EXIT_FAILURE, "elf_newdata() failed: %s",
       elf_errmsg(-1));
  od->d_align = align;
  od->d_off = 0;
  od->d_buf = buf;
  od->d_size = size;
  od->d_type = dtype;
  od->d_version = EV_CURRENT;
 }





 ecp->flags &= ~SYMTAB_INTACT;

 return (s);
}
