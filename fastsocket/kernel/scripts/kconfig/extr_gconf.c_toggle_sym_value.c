
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int sym; } ;


 scalar_t__ FULL_VIEW ;
 scalar_t__ SINGLE_VIEW ;
 scalar_t__ SPLIT_VIEW ;
 int * browsed ;
 int display_list () ;
 int display_tree_part () ;
 int rootmenu ;
 int sym_toggle_tristate_value (int ) ;
 int update_tree (int *,int *) ;
 scalar_t__ view_mode ;

__attribute__((used)) static void toggle_sym_value(struct menu *menu)
{
 if (!menu->sym)
  return;

 sym_toggle_tristate_value(menu->sym);
 if (view_mode == FULL_VIEW)
  update_tree(&rootmenu, ((void*)0));
 else if (view_mode == SPLIT_VIEW) {
  update_tree(browsed, ((void*)0));
  display_list();
 }
 else if (view_mode == SINGLE_VIEW)
  display_tree_part();
}
