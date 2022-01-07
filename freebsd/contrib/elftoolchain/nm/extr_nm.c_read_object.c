
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ print_name; scalar_t__ elem_print_fn; int print_armap; int fileargs; } ;
typedef scalar_t__ Elf_Kind ;
typedef int Elf_Cmd ;
typedef int Elf ;


 int ELF_C_READ ;
 scalar_t__ ELF_K_AR ;
 scalar_t__ ELF_K_NONE ;
 scalar_t__ PRINT_NAME_MULTI ;
 int assert (int ) ;
 int close (int) ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 char const* elf_errmsg (int) ;
 int elf_errno () ;
 scalar_t__ elf_kind (int *) ;
 int elf_next (int *) ;
 int fileargs_open (int ,char const*) ;
 TYPE_1__ nm_opts ;
 int print_ar_index (int,int *) ;
 int printf (char*,char const*) ;
 int read_elf (int *,char const*,scalar_t__) ;
 scalar_t__ sym_elem_print_all ;
 int warn (char*,char const*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
read_object(const char *filename)
{
 Elf *elf, *arf;
 Elf_Cmd elf_cmd;
 Elf_Kind kind;
 int fd, rtn, e_err;

 assert(filename != ((void*)0) && "filename is null");

 if ((fd = fileargs_open(nm_opts.fileargs, filename)) == -1) {
  warn("'%s'", filename);
  return (1);
 }

 elf_cmd = ELF_C_READ;
 if ((arf = elf_begin(fd, elf_cmd, (Elf *) ((void*)0))) == ((void*)0)) {
  if ((e_err = elf_errno()) != 0)
   warnx("elf_begin error: %s", elf_errmsg(e_err));
  else
   warnx("elf_begin error");
  close(fd);
  return (1);
 }

 assert(arf != ((void*)0) && "arf is null.");

 rtn = 0;
 if ((kind = elf_kind(arf)) == ELF_K_NONE) {
  warnx("%s: File format not recognized", filename);
  elf_end(arf);
  close(fd);
  return (1);
 }
 if (kind == ELF_K_AR) {
  if (nm_opts.print_name == PRINT_NAME_MULTI &&
      nm_opts.elem_print_fn == sym_elem_print_all)
   printf("\n%s:\n", filename);
  if (nm_opts.print_armap == 1)
   print_ar_index(fd, arf);
 }

 while ((elf = elf_begin(fd, elf_cmd, arf)) != ((void*)0)) {
  rtn |= read_elf(elf, filename, kind);





  elf_cmd = elf_next(elf);
  elf_end(elf);
 }

 elf_end(arf);
 close(fd);

 return (rtn);
}
