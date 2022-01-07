
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct elfcopy {int * v_rel; TYPE_1__* symtab; int ein; } ;
struct TYPE_20__ {int d_size; } ;
struct TYPE_19__ {int r_info; } ;
struct TYPE_18__ {int r_info; } ;
struct TYPE_17__ {scalar_t__ sh_type; scalar_t__ sh_link; size_t sh_size; int sh_entsize; int sh_info; int sh_name; } ;
struct TYPE_16__ {int is; } ;
typedef TYPE_2__ GElf_Shdr ;
typedef TYPE_3__ GElf_Rela ;
typedef TYPE_4__ GElf_Rel ;
typedef int Elf_Scn ;
typedef TYPE_5__ Elf_Data ;


 int BIT_SET (int *,size_t) ;
 int EXIT_FAILURE ;
 size_t GELF_R_SYM (int ) ;
 scalar_t__ SHT_REL ;
 scalar_t__ SHT_RELA ;
 int * calloc (size_t,int) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_5__* elf_getdata (int *,TYPE_5__*) ;
 scalar_t__ elf_getshstrndx (int ,size_t*) ;
 scalar_t__ elf_ndxscn (int ) ;
 int * elf_nextscn (int ,int *) ;
 char* elf_strptr (int ,size_t,int ) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 TYPE_4__* gelf_getrel (TYPE_5__*,int,TYPE_4__*) ;
 TYPE_3__* gelf_getrela (TYPE_5__*,int,TYPE_3__*) ;
 TYPE_2__* gelf_getshdr (int *,TYPE_2__*) ;
 scalar_t__ is_remove_reloc_sec (struct elfcopy*,int ) ;
 scalar_t__ is_remove_section (struct elfcopy*,char const*) ;
 int warnx (char*) ;

__attribute__((used)) static void
mark_reloc_symbols(struct elfcopy *ecp, size_t sc)
{
 const char *name;
 Elf_Data *d;
 Elf_Scn *s;
 GElf_Rel r;
 GElf_Rela ra;
 GElf_Shdr sh;
 size_t n, indx;
 int elferr, i, len;

 ecp->v_rel = calloc((sc + 7) / 8, 1);
 if (ecp->v_rel == ((void*)0))
  err(EXIT_FAILURE, "calloc failed");

 if (elf_getshstrndx(ecp->ein, &indx) == 0)
  errx(EXIT_FAILURE, "elf_getshstrndx failed: %s",
      elf_errmsg(-1));

 s = ((void*)0);
 while ((s = elf_nextscn(ecp->ein, s)) != ((void*)0)) {
  if (gelf_getshdr(s, &sh) != &sh)
   errx(EXIT_FAILURE, "elf_getshdr failed: %s",
       elf_errmsg(-1));

  if (sh.sh_type != SHT_REL && sh.sh_type != SHT_RELA)
   continue;





  if ((name = elf_strptr(ecp->ein, indx, sh.sh_name)) == ((void*)0))
   errx(EXIT_FAILURE, "elf_strptr failed: %s",
       elf_errmsg(-1));
  if (is_remove_section(ecp, name) ||
      is_remove_reloc_sec(ecp, sh.sh_info))
   continue;


  if (sh.sh_link != elf_ndxscn(ecp->symtab->is))
   continue;

  d = ((void*)0);
  n = 0;
  while (n < sh.sh_size && (d = elf_getdata(s, d)) != ((void*)0)) {
   len = d->d_size / sh.sh_entsize;
   for (i = 0; i < len; i++) {
    if (sh.sh_type == SHT_REL) {
     if (gelf_getrel(d, i, &r) != &r)
      errx(EXIT_FAILURE,
          "elf_getrel failed: %s",
           elf_errmsg(-1));
     n = GELF_R_SYM(r.r_info);
    } else {
     if (gelf_getrela(d, i, &ra) != &ra)
      errx(EXIT_FAILURE,
          "elf_getrela failed: %s",
           elf_errmsg(-1));
     n = GELF_R_SYM(ra.r_info);
    }
    if (n > 0 && n < sc)
     BIT_SET(ecp->v_rel, n);
    else if (n != 0)
     warnx("invalid symbox index");
   }
  }
  elferr = elf_errno();
  if (elferr != 0)
   errx(EXIT_FAILURE, "elf_getdata failed: %s",
       elf_errmsg(elferr));
 }
 elferr = elf_errno();
 if (elferr != 0)
  errx(EXIT_FAILURE, "elf_nextscn failed: %s",
      elf_errmsg(elferr));
}
