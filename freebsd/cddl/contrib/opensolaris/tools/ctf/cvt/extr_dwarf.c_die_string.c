
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dw_err; } ;
typedef TYPE_1__ dwarf_t ;
typedef int Dwarf_Half ;
typedef int Dwarf_Die ;


 scalar_t__ DW_DLV_OK ;
 int die_off (TYPE_1__*,int ) ;
 scalar_t__ dwarf_attrval_string (int ,int ,char const**,int *) ;
 int dwarf_errmsg (int ) ;
 int terminate (char*,int ,int ) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static int
die_string(dwarf_t *dw, Dwarf_Die die, Dwarf_Half name, char **strp, int req)
{
 const char *str = ((void*)0);

 if (dwarf_attrval_string(die, name, &str, &dw->dw_err) != DW_DLV_OK ||
     str == ((void*)0)) {
  if (req)
   terminate("die %llu: failed to get string: %s\n",
       die_off(dw, die), dwarf_errmsg(dw->dw_err));
  else
   *strp = ((void*)0);
  return (0);
 } else
  *strp = xstrdup(str);

 return (1);
}
