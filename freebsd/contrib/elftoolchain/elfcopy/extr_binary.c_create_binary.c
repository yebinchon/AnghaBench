
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int off_t ;
struct TYPE_6__ {scalar_t__ d_size; int * d_buf; } ;
struct TYPE_5__ {int sh_flags; scalar_t__ sh_type; scalar_t__ sh_size; int sh_offset; int sh_addr; } ;
typedef TYPE_1__ GElf_Shdr ;
typedef int Elf_Scn ;
typedef TYPE_2__ Elf_Data ;
typedef int Elf64_Addr ;
typedef int Elf ;


 int ELF_C_READ ;
 int EXIT_FAILURE ;
 int SEEK_SET ;
 int SHF_ALLOC ;
 scalar_t__ SHT_NOBITS ;
 int * elf_begin (int,int ,int *) ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 int * elf_nextscn (int *,int *) ;
 TYPE_2__* elf_rawdata (int *,int *) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 int * gelf_getshdr (int *,TYPE_1__*) ;
 scalar_t__ lseek (int,int,int ) ;
 int warnx (char*,int ) ;
 scalar_t__ write (int,int *,scalar_t__) ;

void
create_binary(int ifd, int ofd)
{
 Elf *e;
 Elf_Scn *scn;
 Elf_Data *d;
 Elf64_Addr baseaddr;
 GElf_Shdr sh;
 off_t baseoff, off;
 int elferr;

 if ((e = elf_begin(ifd, ELF_C_READ, ((void*)0))) == ((void*)0))
  errx(EXIT_FAILURE, "elf_begin() failed: %s",
      elf_errmsg(-1));

 baseaddr = 0;
 baseoff = 0;
 if (lseek(ofd, baseoff, SEEK_SET) < 0)
  err(EXIT_FAILURE, "lseek failed");




 baseoff = -1;
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
  if (baseoff == -1 || (off_t) sh.sh_offset < baseoff) {
   baseoff = sh.sh_offset;
   baseaddr = sh.sh_addr;
  }
 }
 elferr = elf_errno();
 if (elferr != 0)
  warnx("elf_nextscn failed: %s", elf_errmsg(elferr));

 if (baseoff == -1)
  return;




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
  (void) elf_errno();
  if ((d = elf_rawdata(scn, ((void*)0))) == ((void*)0)) {
   elferr = elf_errno();
   if (elferr != 0)
    warnx("elf_rawdata failed: %s", elf_errmsg(-1));
   continue;
  }
  if (d->d_buf == ((void*)0) || d->d_size == 0)
   continue;


  off = sh.sh_addr - baseaddr;
  if (lseek(ofd, off, SEEK_SET) < 0)
   err(EXIT_FAILURE, "lseek failed");


  if (write(ofd, d->d_buf, d->d_size) != (ssize_t) d->d_size)
   err(EXIT_FAILURE, "write failed");
 }
 elferr = elf_errno();
 if (elferr != 0)
  warnx("elf_nextscn failed: %s", elf_errmsg(elferr));
}
