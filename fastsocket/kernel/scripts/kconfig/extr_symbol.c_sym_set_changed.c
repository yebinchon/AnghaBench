
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {struct property* prop; int flags; } ;
struct property {TYPE_1__* menu; struct property* next; } ;
struct TYPE_2__ {int flags; } ;


 int MENU_CHANGED ;
 int SYMBOL_CHANGED ;

void sym_set_changed(struct symbol *sym)
{
 struct property *prop;

 sym->flags |= SYMBOL_CHANGED;
 for (prop = sym->prop; prop; prop = prop->next) {
  if (prop->menu)
   prop->menu->flags |= MENU_CHANGED;
 }
}
