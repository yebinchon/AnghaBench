
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gchar ;
typedef int GtkFileSelection ;


 int GTK_FILE_SELECTION (int ) ;
 int GTK_WIDGET (int ) ;
 int _ (char*) ;
 scalar_t__ conf_write (int const*) ;
 int * gtk_file_selection_get_filename (int ) ;
 int gtk_widget_destroy (int ) ;
 int text_insert_msg (int ,int ) ;

__attribute__((used)) static void
store_filename(GtkFileSelection * file_selector, gpointer user_data)
{
 const gchar *fn;

 fn = gtk_file_selection_get_filename(GTK_FILE_SELECTION
          (user_data));

 if (conf_write(fn))
  text_insert_msg(_("Error"), _("Unable to save configuration !"));

 gtk_widget_destroy(GTK_WIDGET(user_data));
}
