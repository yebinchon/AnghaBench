
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conf_get_changed () ;
 int gtk_widget_set_sensitive (int ,int) ;
 int save_btn ;
 int save_menu_item ;

__attribute__((used)) static void conf_changed(void)
{
 bool changed = conf_get_changed();
 gtk_widget_set_sensitive(save_btn, changed);
 gtk_widget_set_sensitive(save_menu_item, changed);
}
