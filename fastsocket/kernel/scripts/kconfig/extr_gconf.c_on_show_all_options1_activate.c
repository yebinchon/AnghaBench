
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_2__ {int active; } ;
typedef int GtkMenuItem ;


 TYPE_1__* GTK_CHECK_MENU_ITEM (int *) ;
 int display_tree (int *) ;
 int gtk_tree_store_clear (int ) ;
 int rootmenu ;
 int show_all ;
 int tree2 ;

void
on_show_all_options1_activate(GtkMenuItem * menuitem, gpointer user_data)
{
 show_all = GTK_CHECK_MENU_ITEM(menuitem)->active;

 gtk_tree_store_clear(tree2);
 display_tree(&rootmenu);
}
