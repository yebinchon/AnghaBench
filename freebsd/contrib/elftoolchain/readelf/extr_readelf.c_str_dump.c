
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct section {char* name; int scn; } ;
struct readelf {size_t shnum; struct section* sl; } ;
struct TYPE_4__ {scalar_t__ d_size; int * d_buf; } ;
typedef TYPE_1__ Elf_Data ;


 int STR_DUMP ;
 int elf_errmsg (int) ;
 int elf_errno () ;
 TYPE_1__* elf_getdata (int ,int *) ;
 TYPE_1__* elf_rawdata (int ,int *) ;
 int * find_dumpop (struct readelf*,size_t,char*,int ,int) ;
 scalar_t__ isprint (unsigned char) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
str_dump(struct readelf *re)
{
 struct section *s;
 Elf_Data *d;
 unsigned char *start, *end, *buf_end;
 unsigned int len;
 int i, j, elferr, found;

 for (i = 1; (size_t) i < re->shnum; i++) {
  s = &re->sl[i];
  if (find_dumpop(re, (size_t) i, s->name, STR_DUMP, -1) == ((void*)0))
   continue;
  (void) elf_errno();
  if ((d = elf_getdata(s->scn, ((void*)0))) == ((void*)0) &&
      (d = elf_rawdata(s->scn, ((void*)0))) == ((void*)0)) {
   elferr = elf_errno();
   if (elferr != 0)
    warnx("elf_getdata failed: %s",
        elf_errmsg(elferr));
   continue;
  }
  (void) elf_errno();
  if (d->d_size <= 0 || d->d_buf == ((void*)0)) {
   printf("\nSection '%s' has no data to dump.\n",
       s->name);
   continue;
  }
  buf_end = (unsigned char *) d->d_buf + d->d_size;
  start = (unsigned char *) d->d_buf;
  found = 0;
  printf("\nString dump of section '%s':\n", s->name);
  for (;;) {
   while (start < buf_end && !isprint(*start))
    start++;
   if (start >= buf_end)
    break;
   end = start + 1;
   while (end < buf_end && isprint(*end))
    end++;
   printf("  [%6lx]  ",
       (long) (start - (unsigned char *) d->d_buf));
   len = end - start;
   for (j = 0; (unsigned int) j < len; j++)
    putchar(start[j]);
   putchar('\n');
   found = 1;
   if (end >= buf_end)
    break;
   start = end + 1;
  }
  if (!found)
   printf("  No strings found in this section.");
  putchar('\n');
 }
}
