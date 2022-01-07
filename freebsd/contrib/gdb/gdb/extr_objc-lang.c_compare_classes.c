
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;


 char* SYMBOL_PRINT_NAME (struct symbol*) ;
 int error (char*) ;
 int specialcmp (char*,char*) ;

__attribute__((used)) static int
compare_classes (const void *a, const void *b)
{
  char *aname, *bname;

  aname = SYMBOL_PRINT_NAME (*(struct symbol **) a);
  bname = SYMBOL_PRINT_NAME (*(struct symbol **) b);
  if (aname == ((void*)0) || bname == ((void*)0))
    error ("internal: compare_classes(1)");

  return specialcmp (aname+1, bname+1);
}
