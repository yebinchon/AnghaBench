
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;
typedef int gpointer ;
typedef int gchar ;
typedef int GtkTreeSelection ;
typedef int GtkTreePath ;
typedef int GtkTreeIter ;
typedef int GtkCellRendererToggle ;


 int COL_MENU ;
 int GTK_TREE_VIEW (int ) ;
 int gtk_tree_model_get (int ,int *,int ,struct menu**,int) ;
 int gtk_tree_model_get_iter (int ,int *,int *) ;
 int * gtk_tree_model_get_path (int ,int *) ;
 scalar_t__ gtk_tree_path_compare (int *,int *) ;
 int gtk_tree_path_free (int *) ;
 int * gtk_tree_path_new_from_string (int *) ;
 scalar_t__ gtk_tree_selection_get_selected (int *,int *,int *) ;
 int * gtk_tree_view_get_selection (int ) ;
 int model2 ;
 int toggle_sym_value (struct menu*) ;
 int tree2_w ;

__attribute__((used)) static void renderer_toggled(GtkCellRendererToggle * cell,
        gchar * path_string, gpointer user_data)
{
 GtkTreePath *path, *sel_path = ((void*)0);
 GtkTreeIter iter, sel_iter;
 GtkTreeSelection *sel;
 struct menu *menu;

 path = gtk_tree_path_new_from_string(path_string);
 if (!gtk_tree_model_get_iter(model2, &iter, path))
  return;

 sel = gtk_tree_view_get_selection(GTK_TREE_VIEW(tree2_w));
 if (gtk_tree_selection_get_selected(sel, ((void*)0), &sel_iter))
  sel_path = gtk_tree_model_get_path(model2, &sel_iter);
 if (!sel_path)
  goto out1;
 if (gtk_tree_path_compare(path, sel_path))
  goto out2;

 gtk_tree_model_get(model2, &iter, COL_MENU, &menu, -1);
 toggle_sym_value(menu);

      out2:
 gtk_tree_path_free(sel_path);
      out1:
 gtk_tree_path_free(path);
}
