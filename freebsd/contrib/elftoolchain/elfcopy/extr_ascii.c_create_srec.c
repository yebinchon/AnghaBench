
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct elfcopy {int flags; int srec_len; int otgt; } ;
struct TYPE_10__ {scalar_t__ d_size; int * d_buf; } ;
struct TYPE_9__ {int e_entry; } ;
struct TYPE_8__ {scalar_t__ sh_type; int sh_flags; scalar_t__ sh_size; int sh_addr; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef TYPE_3__ Elf_Data ;
typedef int Elf ;


 int ELF_C_READ ;
 int EXIT_FAILURE ;
 int SHF_ALLOC ;
 scalar_t__ SHT_NOBITS ;
 scalar_t__ SHT_SYMTAB ;
 int SREC_FORCE_LEN ;
 int SREC_FORCE_S3 ;
 int * elf_begin (int,int ,int *) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_3__* elf_getdata (int *,int *) ;
 int * elf_nextscn (int *,int *) ;
 int errx (int ,char*,int ) ;
 int * gelf_getehdr (int *,TYPE_2__*) ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 int srec_write_S0 (int,char const*) ;
 int srec_write_Sd (int,char,int,int *,scalar_t__,size_t) ;
 int srec_write_Se (int,int ,int) ;
 int srec_write_symtab (int,char const*,int *,int *,TYPE_1__*) ;
 int strlen (char*) ;
 int strncmp (int ,char*,int ) ;
 int warnx (char*,...) ;

void
create_srec(struct elfcopy *ecp, int ifd, int ofd, const char *ofn)
{
 Elf *e;
 Elf_Scn *scn;
 Elf_Data *d;
 GElf_Ehdr eh;
 GElf_Shdr sh;
 uint64_t max_addr;
 size_t rlen;
 int elferr, addr_sz;
 char dr;

 if ((e = elf_begin(ifd, ELF_C_READ, ((void*)0))) == ((void*)0))
  errx(EXIT_FAILURE, "elf_begin() failed: %s",
      elf_errmsg(-1));


 if (!strncmp(ecp->otgt, "symbolsrec", strlen("symbolsrec"))) {
  scn = ((void*)0);
  while ((scn = elf_nextscn(e, scn)) != ((void*)0)) {
   if (gelf_getshdr(scn, &sh) == ((void*)0)) {
    warnx("gelf_getshdr failed: %s",
        elf_errmsg(-1));
    (void) elf_errno();
    continue;
   }
   if (sh.sh_type != SHT_SYMTAB)
    continue;
   srec_write_symtab(ofd, ofn, e, scn, &sh);
   break;
  }
 }

 if (ecp->flags & SREC_FORCE_S3)
  dr = '3';
 else {



  max_addr = 0;
  scn = ((void*)0);
  while ((scn = elf_nextscn(e, scn)) != ((void*)0)) {
   if (gelf_getshdr(scn, &sh) == ((void*)0)) {
    warnx("gelf_getshdr failed: %s",
        elf_errmsg(-1));
    (void) elf_errno();
    continue;
   }
   if ((sh.sh_flags & SHF_ALLOC) == 0 ||
       sh.sh_type == SHT_NOBITS ||
       sh.sh_size == 0)
    continue;
   if ((uint64_t) sh.sh_addr > max_addr)
    max_addr = sh.sh_addr;
  }
  elferr = elf_errno();
  if (elferr != 0)
   warnx("elf_nextscn failed: %s", elf_errmsg(elferr));

  if (max_addr <= 0xFFFF)
   dr = '1';
  else if (max_addr <= 0xFFFFFF)
   dr = '2';
  else
   dr = '3';
 }

 if (ecp->flags & SREC_FORCE_LEN) {
  addr_sz = dr - '0' + 1;
  if (ecp->srec_len < 1)
   rlen = 1;
  else if (ecp->srec_len + addr_sz + 1 > 255)
   rlen = 255 - (addr_sz + 1);
  else
   rlen = ecp->srec_len;
 } else
  rlen = 16;


 srec_write_S0(ofd, ofn);


 scn = ((void*)0);
 while ((scn = elf_nextscn(e, scn)) != ((void*)0)) {
  if (gelf_getshdr(scn, &sh) == ((void*)0)) {
   warnx("gelf_getshdr failed: %s", elf_errmsg(-1));
   (void) elf_errno();
   continue;
  }
  if ((sh.sh_flags & SHF_ALLOC) == 0 ||
      sh.sh_type == SHT_NOBITS ||
      sh.sh_size == 0)
   continue;
  if (sh.sh_addr > 0xFFFFFFFF) {
   warnx("address space too big for S-Record file");
   continue;
  }
  (void) elf_errno();
  if ((d = elf_getdata(scn, ((void*)0))) == ((void*)0)) {
   elferr = elf_errno();
   if (elferr != 0)
    warnx("elf_getdata failed: %s", elf_errmsg(-1));
   continue;
  }
  if (d->d_buf == ((void*)0) || d->d_size == 0)
   continue;
  srec_write_Sd(ofd, dr, sh.sh_addr, d->d_buf, d->d_size, rlen);
 }
 elferr = elf_errno();
 if (elferr != 0)
  warnx("elf_nextscn failed: %s", elf_errmsg(elferr));


 if (gelf_getehdr(e, &eh) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getehdr() failed: %s",
      elf_errmsg(-1));
 srec_write_Se(ofd, eh.e_entry, ecp->flags & SREC_FORCE_S3);
}
