
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct readelf {int dop; } ;
struct TYPE_2__ {char const sn; int value; int * ln; } ;


 int DW_DEFAULT_OPTIONS ;
 TYPE_1__* dwarf_op ;

__attribute__((used)) static void
parse_dwarf_op_short(struct readelf *re, const char *op)
{
 int i;

 if (op == ((void*)0)) {
  re->dop |= DW_DEFAULT_OPTIONS;
  return;
 }

 for (; *op != '\0'; op++) {
  for (i = 0; dwarf_op[i].ln != ((void*)0); i++) {
   if (dwarf_op[i].sn == *op) {
    re->dop |= dwarf_op[i].value;
    break;
   }
  }
 }
}
