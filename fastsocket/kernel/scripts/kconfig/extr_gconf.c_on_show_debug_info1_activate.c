
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_2__ {int active; } ;
typedef int GtkMenuItem ;


 TYPE_1__* GTK_CHECK_MENU_ITEM (int *) ;
 int rootmenu ;
 int show_debug ;
 int update_tree (int *,int *) ;

void
on_show_debug_info1_activate(GtkMenuItem * menuitem, gpointer user_data)
{
 show_debug = GTK_CHECK_MENU_ITEM(menuitem)->active;
 update_tree(&rootmenu, ((void*)0));
}
