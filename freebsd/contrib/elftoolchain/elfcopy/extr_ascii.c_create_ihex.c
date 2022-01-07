
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_9__ {scalar_t__ d_size; int * d_buf; } ;
struct TYPE_8__ {int e_entry; } ;
struct TYPE_7__ {int sh_flags; scalar_t__ sh_type; scalar_t__ sh_size; int sh_addr; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef TYPE_2__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef TYPE_3__ Elf_Data ;
typedef int Elf ;


 int ELF_C_READ ;
 int EXIT_FAILURE ;
 int SHF_ALLOC ;
 scalar_t__ SHT_NOBITS ;
 int * elf_begin (int,int ,int *) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_3__* elf_getdata (int *,int *) ;
 int * elf_nextscn (int *,int *) ;
 int errx (int ,char*,int ) ;
 int * gelf_getehdr (int *,TYPE_2__*) ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 int ihex_write_00 (int,int,int *,scalar_t__) ;
 int ihex_write_01 (int) ;
 int ihex_write_04 (int,int) ;
 int ihex_write_05 (int,int ) ;
 int warnx (char*,...) ;

void
create_ihex(int ifd, int ofd)
{
 Elf *e;
 Elf_Scn *scn;
 Elf_Data *d;
 GElf_Ehdr eh;
 GElf_Shdr sh;
 int elferr;
 uint16_t addr_hi, old_addr_hi;

 if ((e = elf_begin(ifd, ELF_C_READ, ((void*)0))) == ((void*)0))
  errx(EXIT_FAILURE, "elf_begin() failed: %s",
      elf_errmsg(-1));

 old_addr_hi = 0;
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
   warnx("address space too big for Intel Hex file");
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
  addr_hi = (sh.sh_addr >> 16) & 0xFFFF;
  if (addr_hi > 0 && addr_hi != old_addr_hi) {

   old_addr_hi = addr_hi;
   ihex_write_04(ofd, addr_hi);
  }
  ihex_write_00(ofd, sh.sh_addr, d->d_buf, d->d_size);
 }
 elferr = elf_errno();
 if (elferr != 0)
  warnx("elf_nextscn failed: %s", elf_errmsg(elferr));

 if (gelf_getehdr(e, &eh) == ((void*)0))
  errx(EXIT_FAILURE, "gelf_getehdr() failed: %s",
      elf_errmsg(-1));
 ihex_write_05(ofd, eh.e_entry);
 ihex_write_01(ofd);
}
