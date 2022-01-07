
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; } ;
struct symbol {int type; TYPE_1__ curr; } ;




 int strtol (int ,int *,int) ;
 int sym_calc_value (struct symbol*) ;

__attribute__((used)) static int sym_get_range_val(struct symbol *sym, int base)
{
 sym_calc_value(sym);
 switch (sym->type) {
 case 128:
  base = 10;
  break;
 case 129:
  base = 16;
  break;
 default:
  break;
 }
 return strtol(sym->curr.val, ((void*)0), base);
}
