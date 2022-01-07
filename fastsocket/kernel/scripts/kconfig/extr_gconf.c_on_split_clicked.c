
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gint ;
typedef int GtkButton ;


 int FALSE ;
 int GTK_PANED (int ) ;
 int GTK_WINDOW (int ) ;
 int SPLIT_VIEW ;
 int back_btn ;
 int display_list () ;
 int gtk_paned_set_position (int ,int) ;
 int gtk_tree_store_clear (scalar_t__) ;
 int gtk_widget_set_sensitive (int ,int ) ;
 int gtk_widget_show (int ) ;
 int gtk_window_get_default_size (int ,int*,int*) ;
 int hpaned ;
 int main_wnd ;
 int tree1_w ;
 scalar_t__ tree2 ;
 int view_mode ;

void on_split_clicked(GtkButton * button, gpointer user_data)
{
 gint w, h;
 view_mode = SPLIT_VIEW;
 gtk_widget_show(tree1_w);
 gtk_window_get_default_size(GTK_WINDOW(main_wnd), &w, &h);
 gtk_paned_set_position(GTK_PANED(hpaned), w / 2);
 if (tree2)
  gtk_tree_store_clear(tree2);
 display_list();


 gtk_widget_set_sensitive(back_btn, FALSE);
}
