
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct menu {TYPE_1__* prompt; void* data; struct symbol* sym; } ;
struct TYPE_2__ {int type; } ;


 int ERRDISPLAYTOOSMALL ;
 int KEY_ESC ;
 int P_MENU ;
 char* _ (char const*) ;
 int build_conf (struct menu*) ;
 int child_count ;
 int conf_choice (struct menu*) ;
 int conf_load () ;
 int conf_save () ;
 int conf_string (struct menu*) ;
 struct menu* current_menu ;
 int dialog_clear () ;
 int dialog_menu (char*,char*,struct menu*,int*) ;
 int item_activate_selected () ;
 struct menu* item_data () ;
 int item_is_tag (char) ;
 int item_make (char*) ;
 int item_reset () ;
 int item_set_tag (char) ;
 scalar_t__ item_tag () ;
 char* mconf_readme ;
 char* menu_get_prompt (struct menu*) ;
 char* menu_instructions ;
 int mod ;
 int no ;
 struct menu rootmenu ;
 int search_conf () ;
 int setmod_text ;
 int show_help (struct menu*) ;
 int show_helptext (char*,char*) ;
 int show_textbox (int *,int ,int,int) ;
 int single_menu_mode ;
 int sym_get_tristate_value (struct symbol*) ;
 int sym_is_choice (struct symbol*) ;
 int sym_set_tristate_value (struct symbol*,int ) ;
 int sym_toggle_tristate_value (struct symbol*) ;
 int yes ;

__attribute__((used)) static void conf(struct menu *menu)
{
 struct menu *submenu;
 const char *prompt = menu_get_prompt(menu);
 struct symbol *sym;
 struct menu *active_menu = ((void*)0);
 int res;
 int s_scroll = 0;

 while (1) {
  item_reset();
  current_menu = menu;
  build_conf(menu);
  if (!child_count)
   break;
  if (menu == &rootmenu) {
   item_make("--- ");
   item_set_tag(':');
   item_make(_("    Load an Alternate Configuration File"));
   item_set_tag('L');
   item_make(_("    Save an Alternate Configuration File"));
   item_set_tag('S');
  }
  dialog_clear();
  res = dialog_menu(prompt ? _(prompt) : _("Main Menu"),
      _(menu_instructions),
      active_menu, &s_scroll);
  if (res == 1 || res == KEY_ESC || res == -ERRDISPLAYTOOSMALL)
   break;
  if (!item_activate_selected())
   continue;
  if (!item_tag())
   continue;

  submenu = item_data();
  active_menu = item_data();
  if (submenu)
   sym = submenu->sym;
  else
   sym = ((void*)0);

  switch (res) {
  case 0:
   switch (item_tag()) {
   case 'm':
    if (single_menu_mode)
     submenu->data = (void *) (long) !submenu->data;
    else
     conf(submenu);
    break;
   case 't':
    if (sym_is_choice(sym) && sym_get_tristate_value(sym) == yes)
     conf_choice(submenu);
    else if (submenu->prompt->type == P_MENU)
     conf(submenu);
    break;
   case 's':
    conf_string(submenu);
    break;
   case 'L':
    conf_load();
    break;
   case 'S':
    conf_save();
    break;
   }
   break;
  case 2:
   if (sym)
    show_help(submenu);
   else
    show_helptext(_("README"), _(mconf_readme));
   break;
  case 3:
   if (item_is_tag('t')) {
    if (sym_set_tristate_value(sym, yes))
     break;
    if (sym_set_tristate_value(sym, mod))
     show_textbox(((void*)0), setmod_text, 6, 74);
   }
   break;
  case 4:
   if (item_is_tag('t'))
    sym_set_tristate_value(sym, no);
   break;
  case 5:
   if (item_is_tag('t'))
    sym_set_tristate_value(sym, mod);
   break;
  case 6:
   if (item_is_tag('t'))
    sym_toggle_tristate_value(sym);
   else if (item_is_tag('m'))
    conf(submenu);
   break;
  case 7:
   search_conf();
   break;
  }
 }
}
