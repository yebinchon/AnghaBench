
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gchar ;
typedef int GtkWidget ;
typedef int GtkMenuItem ;


 int GTK_BUTTONS_CLOSE ;
 int GTK_DIALOG_DESTROY_WITH_PARENT ;
 int GTK_MESSAGE_INFO ;
 int GTK_OBJECT (int *) ;
 int GTK_WINDOW (int ) ;
 int G_CALLBACK (int ) ;
 int * _ (char*) ;
 int g_signal_connect_swapped (int ,char*,int ,int ) ;
 int * gtk_message_dialog_new (int ,int ,int ,int ,int const*) ;
 int gtk_widget_destroy ;
 int gtk_widget_show_all (int *) ;
 int main_wnd ;

void on_license1_activate(GtkMenuItem * menuitem, gpointer user_data)
{
 GtkWidget *dialog;
 const gchar *license_text =
     _("gkc is released under the terms of the GNU GPL v2.\n"
       "For more information, please see the source code or\n"
       "visit http://www.fsf.org/licenses/licenses.html\n");

 dialog = gtk_message_dialog_new(GTK_WINDOW(main_wnd),
     GTK_DIALOG_DESTROY_WITH_PARENT,
     GTK_MESSAGE_INFO,
     GTK_BUTTONS_CLOSE, license_text);
 g_signal_connect_swapped(GTK_OBJECT(dialog), "response",
     G_CALLBACK(gtk_widget_destroy),
     GTK_OBJECT(dialog));
 gtk_widget_show_all(dialog);
}
