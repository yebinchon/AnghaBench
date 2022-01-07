
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkButton ;


 int FALSE ;
 int FULL_VIEW ;
 int GTK_PANED (int ) ;
 int back_btn ;
 int display_tree (int *) ;
 int gtk_paned_set_position (int ,int ) ;
 int gtk_tree_store_clear (scalar_t__) ;
 int gtk_widget_hide (int ) ;
 int gtk_widget_set_sensitive (int ,int ) ;
 int hpaned ;
 int rootmenu ;
 int tree1_w ;
 scalar_t__ tree2 ;
 int view_mode ;

void on_full_clicked(GtkButton * button, gpointer user_data)
{
 view_mode = FULL_VIEW;
 gtk_paned_set_position(GTK_PANED(hpaned), 0);
 gtk_widget_hide(tree1_w);
 if (tree2)
  gtk_tree_store_clear(tree2);
 display_tree(&rootmenu);
 gtk_widget_set_sensitive(back_btn, FALSE);
}
