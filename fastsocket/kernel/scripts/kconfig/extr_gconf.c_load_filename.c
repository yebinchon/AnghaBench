
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gchar ;
typedef int GtkFileSelection ;


 int GTK_FILE_SELECTION (int ) ;
 int _ (char*) ;
 scalar_t__ conf_read (int const*) ;
 int display_tree (int *) ;
 int * gtk_file_selection_get_filename (int ) ;
 int rootmenu ;
 int text_insert_msg (int ,int ) ;

__attribute__((used)) static void
load_filename(GtkFileSelection * file_selector, gpointer user_data)
{
 const gchar *fn;

 fn = gtk_file_selection_get_filename(GTK_FILE_SELECTION
          (user_data));

 if (conf_read(fn))
  text_insert_msg(_("Error"), _("Unable to load configuration !"));
 else
  display_tree(&rootmenu);
}
