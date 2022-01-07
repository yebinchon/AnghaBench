
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkMenuItem ;


 int _ (char*) ;
 scalar_t__ conf_write (int *) ;
 int text_insert_msg (int ,int ) ;

void on_save_activate(GtkMenuItem * menuitem, gpointer user_data)
{
 if (conf_write(((void*)0)))
  text_insert_msg(_("Error"), _("Unable to save configuration !"));
}
