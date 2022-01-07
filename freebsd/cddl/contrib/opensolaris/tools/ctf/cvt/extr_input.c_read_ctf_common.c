
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int read_cb_f ;
typedef int Elf ;


 int ELF_C_READ ;


 int EV_CURRENT ;
 int O_RDONLY ;
 int close (int) ;
 int debug (int,char*,char*,char*) ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 int elf_kind (int *) ;
 int elf_version (int ) ;
 int elfterminate (char*,char*) ;
 int open (char*,int ) ;
 int read_archive (int,int *,char*,char*,int *,void*,int) ;
 int read_file (int *,char*,char*,int *,void*,int) ;
 int terminate (char*,char*,...) ;

__attribute__((used)) static int
read_ctf_common(char *file, char *label, read_cb_f *func, void *arg,
    int require_ctf)
{
 Elf *elf;
 int found = 0;
 int fd;

 debug(3, "Reading %s (label %s)\n", file, (label ? label : "NONE"));

 (void) elf_version(EV_CURRENT);

 if ((fd = open(file, O_RDONLY)) < 0)
  terminate("%s: Cannot open for reading", file);
 if ((elf = elf_begin(fd, ELF_C_READ, ((void*)0))) == ((void*)0))
  elfterminate(file, "Cannot read");

 switch (elf_kind(elf)) {
 case 129:
  found = read_archive(fd, elf, file, label,
      func, arg, require_ctf);
  break;

 case 128:
  found = read_file(elf, file, label,
      func, arg, require_ctf);
  break;

 default:
  terminate("%s: Unknown elf kind %d\n", file, elf_kind(elf));
 }

 (void) elf_end(elf);
 (void) close(fd);

 return (found);
}
