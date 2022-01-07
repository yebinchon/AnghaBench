
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf ;


 int ELF_C_READ ;


 int EV_CURRENT ;
 int O_RDONLY ;
 int close (int) ;
 int count_archive (int,int *,char*) ;
 int debug (int,char*,int,int) ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 int elf_errmsg (int) ;
 int elf_kind (int *) ;
 int elf_version (int ) ;
 int open (char*,int ) ;
 int warning (char*,char*,...) ;

int
count_files(char **files, int n)
{
 int nfiles = 0, err = 0;
 Elf *elf;
 int fd, rc, i;

 (void) elf_version(EV_CURRENT);

 for (i = 0; i < n; i++) {
  char *file = files[i];

  if ((fd = open(file, O_RDONLY)) < 0) {
   warning("Can't read input file %s", file);
   err++;
   continue;
  }

  if ((elf = elf_begin(fd, ELF_C_READ, ((void*)0))) == ((void*)0)) {
   warning("Can't open input file %s: %s\n", file,
       elf_errmsg(-1));
   err++;
   (void) close(fd);
   continue;
  }

  switch (elf_kind(elf)) {
  case 129:
   if ((rc = count_archive(fd, elf, file)) < 0)
    err++;
   else
    nfiles += rc;
   break;
  case 128:
   nfiles++;
   break;
  default:
   warning("Input file %s is corrupt\n", file);
   err++;
  }

  (void) elf_end(elf);
  (void) close(fd);
 }

 if (err > 0)
  return (-1);

 debug(2, "Found %d files in %d input files\n", nfiles, n);

 return (nfiles);
}
