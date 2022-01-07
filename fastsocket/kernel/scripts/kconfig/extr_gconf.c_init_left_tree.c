
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkTreeViewColumn ;
typedef int GtkTreeView ;
typedef int GtkTreeSelection ;
typedef int GtkCellRenderer ;


 int COL_BTNACT ;
 int COL_BTNINC ;
 int COL_BTNRAD ;
 int COL_BTNVIS ;
 int COL_COLOR ;
 int COL_OPTION ;
 int FALSE ;
 int GTK_SELECTION_SINGLE ;
 int * GTK_TREE_VIEW (int ) ;
 int GTK_TREE_VIEW_COLUMN (int *) ;
 int TRUE ;
 int _ (char*) ;
 int * gtk_cell_renderer_text_new () ;
 int * gtk_cell_renderer_toggle_new () ;
 int gtk_tree_selection_set_mode (int *,int ) ;
 int gtk_tree_view_append_column (int *,int *) ;
 int * gtk_tree_view_column_new () ;
 int gtk_tree_view_column_pack_start (int ,int *,int ) ;
 int gtk_tree_view_column_set_attributes (int ,int *,char*,int ,char*,int ,char*,...) ;
 int gtk_tree_view_column_set_title (int *,int ) ;
 int * gtk_tree_view_get_selection (int *) ;
 int gtk_tree_view_set_headers_visible (int *,int ) ;
 int gtk_tree_view_set_model (int *,int ) ;
 int gtk_tree_view_set_rules_hint (int *,int ) ;
 int gtk_widget_realize (int ) ;
 int model1 ;
 int tree1_w ;

void init_left_tree(void)
{
 GtkTreeView *view = GTK_TREE_VIEW(tree1_w);
 GtkCellRenderer *renderer;
 GtkTreeSelection *sel;
 GtkTreeViewColumn *column;

 gtk_tree_view_set_model(view, model1);
 gtk_tree_view_set_headers_visible(view, TRUE);
 gtk_tree_view_set_rules_hint(view, FALSE);

 column = gtk_tree_view_column_new();
 gtk_tree_view_append_column(view, column);
 gtk_tree_view_column_set_title(column, _("Options"));

 renderer = gtk_cell_renderer_toggle_new();
 gtk_tree_view_column_pack_start(GTK_TREE_VIEW_COLUMN(column),
     renderer, FALSE);
 gtk_tree_view_column_set_attributes(GTK_TREE_VIEW_COLUMN(column),
         renderer,
         "active", COL_BTNACT,
         "inconsistent", COL_BTNINC,
         "visible", COL_BTNVIS,
         "radio", COL_BTNRAD, ((void*)0));
 renderer = gtk_cell_renderer_text_new();
 gtk_tree_view_column_pack_start(GTK_TREE_VIEW_COLUMN(column),
     renderer, FALSE);
 gtk_tree_view_column_set_attributes(GTK_TREE_VIEW_COLUMN(column),
         renderer,
         "text", COL_OPTION,
         "foreground-gdk",
         COL_COLOR, ((void*)0));

 sel = gtk_tree_view_get_selection(view);
 gtk_tree_selection_set_mode(sel, GTK_SELECTION_SINGLE);
 gtk_widget_realize(tree1_w);
}
