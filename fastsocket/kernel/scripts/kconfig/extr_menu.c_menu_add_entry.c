
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct menu {struct menu* next; int lineno; int file; int parent; struct symbol* sym; } ;


 struct menu* current_entry ;
 int current_file ;
 int current_menu ;
 struct menu** last_entry_ptr ;
 struct menu* malloc (int) ;
 int memset (struct menu*,int ,int) ;
 int zconf_lineno () ;

void menu_add_entry(struct symbol *sym)
{
 struct menu *menu;

 menu = malloc(sizeof(*menu));
 memset(menu, 0, sizeof(*menu));
 menu->sym = sym;
 menu->parent = current_menu;
 menu->file = current_file;
 menu->lineno = zconf_lineno();

 *last_entry_ptr = menu;
 last_entry_ptr = &menu->next;
 current_entry = menu;
}
