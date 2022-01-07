
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int flags; int type; } ;
struct property {int type; } ;
struct menu {int flags; struct symbol* sym; struct property* prompt; struct menu* next; struct menu* list; } ;
typedef enum prop_type { ____Placeholder_prop_type } prop_type ;


 scalar_t__ FULL_VIEW ;
 int MENU_ROOT ;
 int P_MENU ;
 int P_UNKNOWN ;
 scalar_t__ SINGLE_VIEW ;
 scalar_t__ SPLIT_VIEW ;
 int SYMBOL_CHANGED ;
 struct menu* current ;
 int dbg_print_flags (int ) ;
 int dbg_print_ptype (int) ;
 int dbg_print_stype (int ) ;
 int fill_row (struct menu*) ;
 int indent ;
 int menu_get_prompt (struct menu*) ;
 scalar_t__ menu_is_visible (struct menu*) ;
 int place_node (struct menu*,int ) ;
 int printf (char*,...) ;
 struct menu rootmenu ;
 scalar_t__ show_all ;
 scalar_t__ tree ;
 scalar_t__ tree1 ;
 scalar_t__ tree2 ;
 scalar_t__ view_mode ;

__attribute__((used)) static void display_tree(struct menu *menu)
{
 struct symbol *sym;
 struct property *prop;
 struct menu *child;
 enum prop_type ptype;

 if (menu == &rootmenu) {
  indent = 1;
  current = &rootmenu;
 }

 for (child = menu->list; child; child = child->next) {
  prop = child->prompt;
  sym = child->sym;
  ptype = prop ? prop->type : P_UNKNOWN;

  if (sym)
   sym->flags &= ~SYMBOL_CHANGED;

  if ((view_mode == SPLIT_VIEW)
      && !(child->flags & MENU_ROOT) && (tree == tree1))
   continue;

  if ((view_mode == SPLIT_VIEW) && (child->flags & MENU_ROOT)
      && (tree == tree2))
   continue;

  if (menu_is_visible(child) || show_all)
   place_node(child, fill_row(child));
  if ((view_mode != FULL_VIEW) && (ptype == P_MENU)
      && (tree == tree2))
   continue;




  if (((view_mode == SINGLE_VIEW) && (menu->flags & MENU_ROOT))
      || (view_mode == FULL_VIEW)
      || (view_mode == SPLIT_VIEW)) {
   indent++;
   display_tree(child);
   indent--;
  }
 }
}
