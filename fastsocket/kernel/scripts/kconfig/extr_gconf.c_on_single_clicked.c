
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkButton ;


 int GTK_PANED (int ) ;
 int SINGLE_VIEW ;
 int * current ;
 int display_tree_part () ;
 int gtk_paned_set_position (int ,int ) ;
 int gtk_widget_hide (int ) ;
 int hpaned ;
 int rootmenu ;
 int tree1_w ;
 int view_mode ;

void on_single_clicked(GtkButton * button, gpointer user_data)
{
 view_mode = SINGLE_VIEW;
 gtk_paned_set_position(GTK_PANED(hpaned), 0);
 gtk_widget_hide(tree1_w);
 current = &rootmenu;
 display_tree_part();
}
