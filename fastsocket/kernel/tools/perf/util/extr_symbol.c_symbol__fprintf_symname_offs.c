
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {char* name; unsigned long start; } ;
struct addr_location {unsigned long addr; } ;
typedef int FILE ;


 size_t fprintf (int *,char*,...) ;

size_t symbol__fprintf_symname_offs(const struct symbol *sym,
        const struct addr_location *al, FILE *fp)
{
 unsigned long offset;
 size_t length;

 if (sym && sym->name) {
  length = fprintf(fp, "%s", sym->name);
  if (al) {
   offset = al->addr - sym->start;
   length += fprintf(fp, "+0x%lx", offset);
  }
  return length;
 } else
  return fprintf(fp, "[unknown]");
}
