
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int list; } ;


 TYPE_1__* current_entry ;
 TYPE_1__* current_menu ;
 int * last_entry_ptr ;
 TYPE_1__ rootmenu ;

void menu_init(void)
{
 current_entry = current_menu = &rootmenu;
 last_entry_ptr = &rootmenu.list;
}
