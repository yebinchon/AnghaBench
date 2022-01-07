
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfdump {char* filename; char* archive; int flags; int * elf; } ;


 int ELF_C_READ ;



 int O_RDONLY ;
 int PRINT_FILENAME ;
 scalar_t__ ac_detect_ar (int) ;
 int ac_print_ar (struct elfdump*,int) ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 int elf_errmsg (int) ;
 int elf_kind (int *) ;
 int elf_print_ar (struct elfdump*,int) ;
 int elf_print_elf (struct elfdump*) ;
 int open (char*,int ) ;
 int printf (char*,char*) ;
 int warn (char*,char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
elf_print_object(struct elfdump *ed)
{
 int fd;

 if ((fd = open(ed->filename, O_RDONLY)) == -1) {
  warn("open %s failed", ed->filename);
  return;
 }
 if ((ed->elf = elf_begin(fd, ELF_C_READ, ((void*)0))) == ((void*)0)) {
  warnx("elf_begin() failed: %s", elf_errmsg(-1));
  return;
 }

 switch (elf_kind(ed->elf)) {
 case 128:
  warnx("Not an ELF file.");
  return;
 case 129:
  if (ed->flags & PRINT_FILENAME)
   printf("\n%s:\n", ed->filename);
  elf_print_elf(ed);
  break;
 case 130:

  ed->archive = ed->filename;
  elf_print_ar(ed, fd);

  break;
 default:
  warnx("Internal: libelf returned unknown elf kind.");
  return;
 }

 elf_end(ed->elf);
}
