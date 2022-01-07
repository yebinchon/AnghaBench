
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct section {char const* name; size_t link; int info; int addr; int flags; int type; int align; int entsize; int sz; int off; int * scn; } ;
struct readelf {size_t shnum; struct section* sl; int elf; } ;
struct TYPE_3__ {size_t sh_link; int sh_info; int sh_addr; int sh_flags; int sh_type; int sh_addralign; int sh_entsize; int sh_size; int sh_offset; int sh_name; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef int Elf_Scn ;


 int EXIT_FAILURE ;
 size_t SHN_UNDEF ;
 struct section* calloc (size_t,int) ;
 char const* elf_errmsg (int) ;
 int elf_errno () ;
 int * elf_getscn (int ,int ) ;
 int elf_getshnum (int ,size_t*) ;
 int elf_getshstrndx (int ,size_t*) ;
 size_t elf_ndxscn (int *) ;
 int * elf_nextscn (int ,int *) ;
 char* elf_strptr (int ,size_t,int ) ;
 int err (int ,char*) ;
 int free (struct section*) ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
load_sections(struct readelf *re)
{
 struct section *s;
 const char *name;
 Elf_Scn *scn;
 GElf_Shdr sh;
 size_t shstrndx, ndx;
 int elferr;


 if (!elf_getshnum(re->elf, &re->shnum)) {
  warnx("elf_getshnum failed: %s", elf_errmsg(-1));
  return;
 }
 if (re->sl != ((void*)0))
  free(re->sl);
 if ((re->sl = calloc(re->shnum, sizeof(*re->sl))) == ((void*)0))
  err(EXIT_FAILURE, "calloc failed");


 if (!elf_getshstrndx(re->elf, &shstrndx)) {
  warnx("elf_getshstrndx failed: %s", elf_errmsg(-1));
  return;
 }

 if ((scn = elf_getscn(re->elf, 0)) == ((void*)0))
  return;

 (void) elf_errno();
 do {
  if (gelf_getshdr(scn, &sh) == ((void*)0)) {
   warnx("gelf_getshdr failed: %s", elf_errmsg(-1));
   (void) elf_errno();
   continue;
  }
  if ((name = elf_strptr(re->elf, shstrndx, sh.sh_name)) == ((void*)0)) {
   (void) elf_errno();
   name = "<no-name>";
  }
  if ((ndx = elf_ndxscn(scn)) == SHN_UNDEF) {
   if ((elferr = elf_errno()) != 0) {
    warnx("elf_ndxscn failed: %s",
        elf_errmsg(elferr));
    continue;
   }
  }
  if (ndx >= re->shnum) {
   warnx("section index of '%s' out of range", name);
   continue;
  }
  if (sh.sh_link >= re->shnum)
   warnx("section link %llu of '%s' out of range",
       (unsigned long long)sh.sh_link, name);
  s = &re->sl[ndx];
  s->name = name;
  s->scn = scn;
  s->off = sh.sh_offset;
  s->sz = sh.sh_size;
  s->entsize = sh.sh_entsize;
  s->align = sh.sh_addralign;
  s->type = sh.sh_type;
  s->flags = sh.sh_flags;
  s->addr = sh.sh_addr;
  s->link = sh.sh_link;
  s->info = sh.sh_info;
 } while ((scn = elf_nextscn(re->elf, scn)) != ((void*)0));
 elferr = elf_errno();
 if (elferr != 0)
  warnx("elf_nextscn failed: %s", elf_errmsg(elferr));
}
