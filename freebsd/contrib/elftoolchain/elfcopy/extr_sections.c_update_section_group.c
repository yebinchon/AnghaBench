
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
struct section {size_t* buf; int sz; int nocopy; int is; } ;
struct elfcopy {scalar_t__* secndx; int ein; } ;
struct TYPE_6__ {size_t* d_buf; } ;
struct TYPE_5__ {int sh_size; int sh_entsize; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ Elf_Data ;


 int EXIT_FAILURE ;
 size_t GRP_COMDAT ;
 size_t SHN_UNDEF ;
 int elf_errmsg (int) ;
 TYPE_2__* elf_getdata (int ,int *) ;
 int elf_getshnum (int ,size_t*) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 int * gelf_getshdr (int ,TYPE_1__*) ;
 size_t* malloc (int) ;

__attribute__((used)) static void
update_section_group(struct elfcopy *ecp, struct section *s)
{
 GElf_Shdr ish;
 Elf_Data *id;
 uint32_t *ws, *wd;
 uint64_t n;
 size_t ishnum;
 int i, j;

 if (!elf_getshnum(ecp->ein, &ishnum))
  errx(EXIT_FAILURE, "elf_getshnum failed: %s",
      elf_errmsg(-1));

 if (gelf_getshdr(s->is, &ish) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getehdr() failed: %s",
      elf_errmsg(-1));

 if ((id = elf_getdata(s->is, ((void*)0))) == ((void*)0))
  errx(EXIT_FAILURE, "elf_getdata() failed: %s",
      elf_errmsg(-1));

 if (ish.sh_size == 0)
  return;

 if (ish.sh_entsize == 0)
  ish.sh_entsize = 4;

 ws = id->d_buf;





 if ((*ws & 0x1) == 0)
  return;

 if ((s->buf = malloc(ish.sh_size)) == ((void*)0))
  err(EXIT_FAILURE, "malloc failed");

 s->sz = ish.sh_size;

 wd = s->buf;


 *wd = *ws;


 n = ish.sh_size / ish.sh_entsize;
 for(i = 1, j = 1; (uint64_t)i < n; i++) {
  if (ws[i] != SHN_UNDEF && ws[i] < ishnum &&
      ecp->secndx[ws[i]] != 0)
   wd[j++] = ecp->secndx[ws[i]];
  else
   s->sz -= 4;
 }

 s->nocopy = 1;
}
