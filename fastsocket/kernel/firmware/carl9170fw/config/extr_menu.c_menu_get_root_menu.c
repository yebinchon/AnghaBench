
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;


 struct menu rootmenu ;

struct menu *menu_get_root_menu(struct menu *menu)
{
 return &rootmenu;
}
