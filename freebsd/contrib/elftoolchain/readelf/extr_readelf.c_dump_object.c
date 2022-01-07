
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct readelf {int flags; char* filename; int * elf; } ;


 int DISPLAY_FILENAME ;
 int ELF_C_READ ;



 int dump_ar (struct readelf*,int) ;
 int dump_elf (struct readelf*) ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 int elf_errmsg (int) ;
 int elf_kind (int *) ;
 int printf (char*,char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static void
dump_object(struct readelf *re, int fd)
{
 if ((re->flags & DISPLAY_FILENAME) != 0)
  printf("\nFile: %s\n", re->filename);

 if ((re->elf = elf_begin(fd, ELF_C_READ, ((void*)0))) == ((void*)0)) {
  warnx("elf_begin() failed: %s", elf_errmsg(-1));
  return;
 }

 switch (elf_kind(re->elf)) {
 case 128:
  warnx("Not an ELF file.");
  return;
 case 129:
  dump_elf(re);
  break;
 case 130:
  dump_ar(re, fd);
  break;
 default:
  warnx("Internal: libelf returned unknown elf kind.");
  return;
 }

 elf_end(re->elf);
}
