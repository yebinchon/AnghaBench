
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_nlink; int st_mode; } ;
struct elfcopy {scalar_t__ itf; scalar_t__ otf; scalar_t__ oec; scalar_t__ oed; int flags; int * ein; int * eout; } ;


 scalar_t__ ELFCLASS64 ;
 scalar_t__ ELFCLASSNONE ;
 scalar_t__ ELFDATA2LSB ;
 scalar_t__ ELFDATANONE ;
 int ELF_C_READ ;
 int ELF_C_SET ;
 int ELF_C_WRITE ;
 int ELF_F_LAYOUT ;





 scalar_t__ ETF_ELF ;



 int EXIT_FAILURE ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int PRESERVE_DATE ;
 int SEEK_SET ;
 scalar_t__ S_ISLNK (int ) ;
 int ac_create_ar (struct elfcopy*,int,int) ;
 scalar_t__ ac_detect_ar (int) ;
 int close (int) ;
 scalar_t__ copy_from_tempfile (char*,char const*,int,int*,int) ;
 int create_binary (int,int) ;
 int create_elf (struct elfcopy*) ;
 int create_elf_from_binary (struct elfcopy*,int,char const*) ;
 int create_elf_from_ihex (struct elfcopy*,int) ;
 int create_elf_from_srec (struct elfcopy*,int) ;
 int create_ihex (int,int) ;
 int create_pe (struct elfcopy*,int,int) ;
 int create_srec (struct elfcopy*,int,int,char const*) ;
 int create_tempfile (char**,int*) ;
 void* elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 int elf_errmsg (int) ;
 int elf_flagelf (int *,int ,int ) ;
 int elf_kind (int *) ;
 scalar_t__ elftc_set_timestamps (char const*,struct stat*) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,...) ;
 int fchmod (int,int ) ;
 int free (char*) ;
 int fstat (int,struct stat*) ;
 scalar_t__ lseek (int,int ,int ) ;
 int lstat (char const*,struct stat*) ;
 int open (char const*,int,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static void
create_file(struct elfcopy *ecp, const char *src, const char *dst)
{
 struct stat sb;
 char *tempfile, *elftemp;
 int efd, ifd, ofd, ofd0, tfd;
 int in_place;

 tempfile = ((void*)0);

 if (src == ((void*)0))
  errx(EXIT_FAILURE, "internal: src == NULL");
 if ((ifd = open(src, O_RDONLY)) == -1)
  err(EXIT_FAILURE, "open %s failed", src);

 if (fstat(ifd, &sb) == -1)
  err(EXIT_FAILURE, "fstat %s failed", src);

 if (dst == ((void*)0))
  create_tempfile(&tempfile, &ofd);
 else
  if ((ofd = open(dst, O_RDWR|O_CREAT, 0755)) == -1)
   err(EXIT_FAILURE, "open %s failed", dst);



 if (ac_detect_ar(ifd)) {
  ac_create_ar(ecp, ifd, ofd);
  goto copy_done;
 }


 if (lseek(ifd, 0, SEEK_SET) < 0)
  err(EXIT_FAILURE, "lseek failed");





 if (ecp->itf != ETF_ELF) {






  if (ecp->otf != ETF_ELF) {
   if (ecp->oec == ELFCLASSNONE)
    ecp->oec = ELFCLASS64;
   if (ecp->oed == ELFDATANONE)
    ecp->oed = ELFDATA2LSB;
  }
  create_tempfile(&elftemp, &efd);
  if ((ecp->eout = elf_begin(efd, ELF_C_WRITE, ((void*)0))) == ((void*)0))
   errx(EXIT_FAILURE, "elf_begin() failed: %s",
       elf_errmsg(-1));
  elf_flagelf(ecp->eout, ELF_C_SET, ELF_F_LAYOUT);
  if (ecp->itf == 132)
   create_elf_from_binary(ecp, ifd, src);
  else if (ecp->itf == 130)
   create_elf_from_ihex(ecp, ifd);
  else if (ecp->itf == 128)
   create_elf_from_srec(ecp, ifd);
  else
   errx(EXIT_FAILURE, "Internal: invalid target flavour");
  elf_end(ecp->eout);


  close(ifd);
  if ((ifd = open(elftemp, O_RDONLY)) == -1)
   err(EXIT_FAILURE, "open %s failed", src);
  close(efd);
  if (unlink(elftemp) < 0)
   err(EXIT_FAILURE, "unlink %s failed", elftemp);
  free(elftemp);
 }

 if ((ecp->ein = elf_begin(ifd, ELF_C_READ, ((void*)0))) == ((void*)0))
  errx(EXIT_FAILURE, "elf_begin() failed: %s",
      elf_errmsg(-1));

 switch (elf_kind(ecp->ein)) {
 case 133:
  errx(EXIT_FAILURE, "file format not recognized");
 case 134:
  if ((ecp->eout = elf_begin(ofd, ELF_C_WRITE, ((void*)0))) == ((void*)0))
   errx(EXIT_FAILURE, "elf_begin() failed: %s",
       elf_errmsg(-1));


  elf_flagelf(ecp->eout, ELF_C_SET, ELF_F_LAYOUT);




  create_elf(ecp);
  elf_end(ecp->eout);




  if (ecp->otf != ETF_ELF) {




   if (tempfile != ((void*)0)) {
    if (unlink(tempfile) < 0)
     err(EXIT_FAILURE, "unlink %s failed",
         tempfile);
    free(tempfile);
   }
   create_tempfile(&tempfile, &ofd0);





   if (lseek(ofd, 0, SEEK_SET) < 0)
    err(EXIT_FAILURE,
        "lseek failed for the output object");




   switch (ecp->otf) {
   case 132:
    create_binary(ofd, ofd0);
    break;
   case 130:
    create_ihex(ofd, ofd0);
    break;
   case 128:
    create_srec(ecp, ofd, ofd0,
        dst != ((void*)0) ? dst : src);
    break;
   case 129:
   case 131:



    errx(EXIT_FAILURE, "PE/EFI support not enabled"
        " at compile time");

    break;
   default:
    errx(EXIT_FAILURE, "Internal: unsupported"
        " output flavour %d", ecp->oec);
   }

   close(ofd);
   ofd = ofd0;
  }

  break;

 case 135:

  break;
 default:
  errx(EXIT_FAILURE, "file format not supported");
 }

 elf_end(ecp->ein);


copy_done:


 if (tempfile != ((void*)0)) {
  in_place = 0;
  if (dst == ((void*)0)) {
   dst = src;
   if (lstat(dst, &sb) != -1 &&
       (sb.st_nlink > 1 || S_ISLNK(sb.st_mode)))
    in_place = 1;
  }

  if (copy_from_tempfile(tempfile, dst, ofd, &tfd, in_place) < 0)
   err(EXIT_FAILURE, "creation of %s failed", dst);

  free(tempfile);
  tempfile = ((void*)0);

  ofd = tfd;
 }

 if (strcmp(dst, "/dev/null") && fchmod(ofd, sb.st_mode) == -1)
  err(EXIT_FAILURE, "fchmod %s failed", dst);

 if ((ecp->flags & PRESERVE_DATE) &&
     elftc_set_timestamps(dst, &sb) < 0)
  err(EXIT_FAILURE, "setting timestamps failed");

 close(ifd);
 close(ofd);
}
