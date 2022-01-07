
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GTK_TREE_VIEW (int ) ;
 scalar_t__ SINGLE_VIEW ;
 scalar_t__ SPLIT_VIEW ;
 int browsed ;
 int current ;
 int display_tree (int ) ;
 int gtk_tree_store_clear (scalar_t__) ;
 int gtk_tree_view_expand_all (int ) ;
 scalar_t__ tree2 ;
 int tree2_w ;
 scalar_t__ view_mode ;

__attribute__((used)) static void display_tree_part(void)
{
 if (tree2)
  gtk_tree_store_clear(tree2);
 if (view_mode == SINGLE_VIEW)
  display_tree(current);
 else if (view_mode == SPLIT_VIEW)
  display_tree(browsed);
 gtk_tree_view_expand_all(GTK_TREE_VIEW(tree2_w));
}
