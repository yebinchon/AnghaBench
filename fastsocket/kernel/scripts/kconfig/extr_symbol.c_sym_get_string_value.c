
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tristate ;
struct TYPE_2__ {scalar_t__ val; } ;
struct symbol {int type; TYPE_1__ curr; } ;






 int sym_get_tristate_value (struct symbol*) ;


const char *sym_get_string_value(struct symbol *sym)
{
 tristate val;

 switch (sym->type) {
 case 132:
 case 131:
  val = sym_get_tristate_value(sym);
  switch (val) {
  case 129:
   return "n";
  case 130:
   return "m";
  case 128:
   return "y";
  }
  break;
 default:
  ;
 }
 return (const char *)sym->curr.val;
}
