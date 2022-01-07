
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkButton ;


 int GTK_TREE_VIEW (int ) ;
 int gtk_tree_view_collapse_all (int ) ;
 int tree2_w ;

void on_collapse_clicked(GtkButton * button, gpointer user_data)
{
 gtk_tree_view_collapse_all(GTK_TREE_VIEW(tree2_w));
}
