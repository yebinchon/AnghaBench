
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct section {int scn; int * name; } ;
struct readelf {size_t shnum; struct section* sl; } ;
struct TYPE_3__ {size_t d_size; unsigned char* d_buf; } ;
typedef TYPE_1__ Elf_Data ;


 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_1__* elf_getdata (int ,int *) ;
 scalar_t__ isprint (unsigned char) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int strcmp (int *,char*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
dump_dwarf_str(struct readelf *re)
{
 struct section *s;
 Elf_Data *d;
 unsigned char *p;
 int elferr, end, i, j;

 printf("\nContents of section .debug_str:\n");

 s = ((void*)0);
 for (i = 0; (size_t) i < re->shnum; i++) {
  s = &re->sl[i];
  if (s->name != ((void*)0) && !strcmp(s->name, ".debug_str"))
   break;
 }
 if ((size_t) i >= re->shnum)
  return;

 (void) elf_errno();
 if ((d = elf_getdata(s->scn, ((void*)0))) == ((void*)0)) {
  elferr = elf_errno();
  if (elferr != 0)
   warnx("elf_getdata failed: %s", elf_errmsg(-1));
  return;
 }
 if (d->d_size <= 0)
  return;

 for (i = 0, p = d->d_buf; (size_t) i < d->d_size; i += 16) {
  printf("  0x%08x", (unsigned int) i);
  if ((size_t) i + 16 > d->d_size)
   end = d->d_size;
  else
   end = i + 16;
  for (j = i; j < i + 16; j++) {
   if ((j - i) % 4 == 0)
    putchar(' ');
   if (j >= end) {
    printf("  ");
    continue;
   }
   printf("%02x", (uint8_t) p[j]);
  }
  putchar(' ');
  for (j = i; j < end; j++) {
   if (isprint(p[j]))
    putchar(p[j]);
   else if (p[j] == 0)
    putchar('.');
   else
    putchar(' ');
  }
  putchar('\n');
 }
}
