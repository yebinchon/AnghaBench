
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct readelf {int dop; } ;
struct TYPE_2__ {int value; int * ln; } ;


 int DW_DEFAULT_OPTIONS ;
 int EXIT_FAILURE ;
 TYPE_1__* dwarf_op ;
 int err (int ,char*) ;
 int free (char*) ;
 int strcmp (char*,int *) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void
parse_dwarf_op_long(struct readelf *re, const char *op)
{
 char *p, *token, *bp;
 int i;

 if (op == ((void*)0)) {
  re->dop |= DW_DEFAULT_OPTIONS;
  return;
 }

 if ((p = strdup(op)) == ((void*)0))
  err(EXIT_FAILURE, "strdup failed");
 bp = p;

 while ((token = strsep(&p, ",")) != ((void*)0)) {
  for (i = 0; dwarf_op[i].ln != ((void*)0); i++) {
   if (!strcmp(token, dwarf_op[i].ln)) {
    re->dop |= dwarf_op[i].value;
    break;
   }
  }
 }

 free(bp);
}
