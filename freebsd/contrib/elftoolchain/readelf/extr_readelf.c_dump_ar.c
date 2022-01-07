
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char* uintmax_t ;
struct readelf {int options; char* filename; int * ar; int * elf; } ;
typedef scalar_t__ off_t ;
struct TYPE_6__ {char* ar_name; } ;
struct TYPE_5__ {char* as_name; scalar_t__ as_off; } ;
typedef int Elf_Cmd ;
typedef TYPE_1__ Elf_Arsym ;
typedef TYPE_2__ Elf_Arhdr ;
typedef int Elf ;


 int ELF_C_READ ;
 int RE_C ;
 scalar_t__ SARMAG ;
 int dump_elf (struct readelf*) ;
 void* elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 int elf_errmsg (int) ;
 TYPE_2__* elf_getarhdr (int *) ;
 TYPE_1__* elf_getarsym (int *,size_t*) ;
 int elf_next (int *) ;
 scalar_t__ elf_rand (int *,scalar_t__) ;
 int printf (char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
dump_ar(struct readelf *re, int fd)
{
 Elf_Arsym *arsym;
 Elf_Arhdr *arhdr;
 Elf_Cmd cmd;
 Elf *e;
 size_t sz;
 off_t off;
 int i;

 re->ar = re->elf;

 if (re->options & RE_C) {
  if ((arsym = elf_getarsym(re->ar, &sz)) == ((void*)0)) {
   warnx("elf_getarsym() failed: %s", elf_errmsg(-1));
   goto process_members;
  }
  printf("Index of archive %s: (%ju entries)\n", re->filename,
      (uintmax_t) sz - 1);
  off = 0;
  for (i = 0; (size_t) i < sz; i++) {
   if (arsym[i].as_name == ((void*)0))
    break;
   if (arsym[i].as_off != off) {
    off = arsym[i].as_off;
    if (elf_rand(re->ar, off) != off) {
     warnx("elf_rand() failed: %s",
         elf_errmsg(-1));
     continue;
    }
    if ((e = elf_begin(fd, ELF_C_READ, re->ar)) ==
        ((void*)0)) {
     warnx("elf_begin() failed: %s",
         elf_errmsg(-1));
     continue;
    }
    if ((arhdr = elf_getarhdr(e)) == ((void*)0)) {
     warnx("elf_getarhdr() failed: %s",
         elf_errmsg(-1));
     elf_end(e);
     continue;
    }
    printf("Binary %s(%s) contains:\n",
        re->filename, arhdr->ar_name);
   }
   printf("\t%s\n", arsym[i].as_name);
  }
  if (elf_rand(re->ar, SARMAG) != SARMAG) {
   warnx("elf_rand() failed: %s", elf_errmsg(-1));
   return;
  }
 }

process_members:

 if ((re->options & ~RE_C) == 0)
  return;

 cmd = ELF_C_READ;
 while ((re->elf = elf_begin(fd, cmd, re->ar)) != ((void*)0)) {
  if ((arhdr = elf_getarhdr(re->elf)) == ((void*)0)) {
   warnx("elf_getarhdr() failed: %s", elf_errmsg(-1));
   goto next_member;
  }
  if (strcmp(arhdr->ar_name, "/") == 0 ||
      strcmp(arhdr->ar_name, "//") == 0 ||
      strcmp(arhdr->ar_name, "__.SYMDEF") == 0)
   goto next_member;
  printf("\nFile: %s(%s)\n", re->filename, arhdr->ar_name);
  dump_elf(re);

 next_member:
  cmd = elf_next(re->elf);
  elf_end(re->elf);
 }
 re->elf = re->ar;
}
