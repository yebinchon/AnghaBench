
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_constant {char* name; char* value; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*,char*) ;

__attribute__((used)) static int
print_md_constant (void **slot, void *info)
{
  struct md_constant *def = (struct md_constant *) *slot;
  FILE *file = (FILE *) info;

  fprintf (file, "#define %s %s\n", def->name, def->value);
  return 1;
}
