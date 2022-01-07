
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {char* name; } ;
struct menu {struct menu* next; struct menu* list; struct symbol* sym; } ;


 char* _ (char*) ;
 int conf (int ) ;
 int conf_cnt ;
 scalar_t__ dont_ask ;
 scalar_t__ dont_ask_dont_tell ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ input_mode ;
 int menu_get_parent_menu (struct menu*) ;
 int menu_is_visible (struct menu*) ;
 int printf (char*) ;
 int return_value ;
 int rootEntry ;
 int stderr ;
 scalar_t__ sym_get_tristate_value (struct symbol*) ;
 int sym_has_value (struct symbol*) ;
 scalar_t__ sym_is_changable (struct symbol*) ;
 scalar_t__ sym_is_choice (struct symbol*) ;
 int sym_is_choice_value (struct symbol*) ;
 scalar_t__ yes ;

__attribute__((used)) static void check_conf(struct menu *menu)
{
 struct symbol *sym;
 struct menu *child;

 if (!menu_is_visible(menu))
  return;

 sym = menu->sym;
 if (sym && !sym_has_value(sym)) {
  if (sym_is_changable(sym) ||
      (sym_is_choice(sym) && sym_get_tristate_value(sym) == yes)) {
   if (input_mode == dont_ask ||
       input_mode == dont_ask_dont_tell) {
    if (input_mode == dont_ask &&
        sym->name && !sym_is_choice_value(sym)) {
     fprintf(stderr,"CONFIG_%s\n",sym->name);
     ++return_value;
    }
   } else {
   if (!conf_cnt++)
    printf(_("*\n* Restart config...\n*\n"));
   rootEntry = menu_get_parent_menu(menu);
   conf(rootEntry);
  }
 }
 }

 for (child = menu->list; child; child = child->next)
  check_conf(child);
}
