
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int val; } ;
struct symbol {int type; TYPE_4__ curr; } ;
struct property {TYPE_3__* expr; } ;
struct TYPE_6__ {int sym; } ;
struct TYPE_5__ {int sym; } ;
struct TYPE_7__ {TYPE_2__ right; TYPE_1__ left; } ;




 int sprintf (char*,char*,int) ;
 int strdup (char*) ;
 int strtol (int ,int *,int) ;
 struct property* sym_get_range_prop (struct symbol*) ;
 int sym_get_range_val (int ,int) ;

__attribute__((used)) static void sym_validate_range(struct symbol *sym)
{
 struct property *prop;
 int base, val, val2;
 char str[64];

 switch (sym->type) {
 case 128:
  base = 10;
  break;
 case 129:
  base = 16;
  break;
 default:
  return;
 }
 prop = sym_get_range_prop(sym);
 if (!prop)
  return;
 val = strtol(sym->curr.val, ((void*)0), base);
 val2 = sym_get_range_val(prop->expr->left.sym, base);
 if (val >= val2) {
  val2 = sym_get_range_val(prop->expr->right.sym, base);
  if (val <= val2)
   return;
 }
 if (sym->type == 128)
  sprintf(str, "%d", val2);
 else
  sprintf(str, "0x%x", val2);
 sym->curr.val = strdup(str);
}
