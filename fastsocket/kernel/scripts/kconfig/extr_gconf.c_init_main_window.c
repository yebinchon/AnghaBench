
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_5__ {int window; } ;
typedef int GtkWidget ;
typedef int GtkTextBuffer ;
typedef int GtkStyle ;
typedef int GtkCheckMenuItem ;
typedef int GladeXML ;


 int FALSE ;

 int GTK_TEXT_VIEW (void*) ;
 int GTK_WINDOW (TYPE_1__*) ;
 int PANGO_WEIGHT_BOLD ;


 char* _ (char*) ;
 void* back_btn ;
 int conf_changed ;
 int conf_set_changed_callback (int ) ;
 int g_error (char*) ;
 int g_signal_emit_by_name (int *,char*) ;
 char* getenv (char*) ;
 void* glade_xml_get_widget (int *,char*) ;
 int * glade_xml_new (int const*,char*,int *) ;
 int glade_xml_signal_autoconnect (int *) ;
 int gtk_check_menu_item_set_active (int *,int ) ;
 void* gtk_text_buffer_create_tag (int *,char*,char*,...) ;
 int * gtk_text_view_get_buffer (int ) ;
 int * gtk_widget_get_style (TYPE_1__*) ;
 int gtk_widget_set_sensitive (void*,int ) ;
 int gtk_widget_show (TYPE_1__*) ;
 int gtk_window_set_title (int ,char*) ;
 void* hpaned ;
 TYPE_1__* main_wnd ;
 int replace_button_icon (int *,int ,int *,char*,int **) ;
 void* save_btn ;
 void* save_menu_item ;
 int show_name ;
 int show_range ;
 int show_value ;
 int sprintf (char*,char*,char*) ;
 void* tag1 ;
 void* tag2 ;
 void* text_w ;
 void* tree1_w ;
 void* tree2_w ;
 int view_mode ;
 void* vpaned ;
 scalar_t__ xpm_back ;
 scalar_t__ xpm_load ;
 scalar_t__ xpm_save ;
 scalar_t__ xpm_single_view ;
 scalar_t__ xpm_split_view ;
 scalar_t__ xpm_tree_view ;

void init_main_window(const gchar * glade_file)
{
 GladeXML *xml;
 GtkWidget *widget;
 GtkTextBuffer *txtbuf;
 char title[256];
 GtkStyle *style;

 xml = glade_xml_new(glade_file, "window1", ((void*)0));
 if (!xml)
  g_error(_("GUI loading failed !\n"));
 glade_xml_signal_autoconnect(xml);

 main_wnd = glade_xml_get_widget(xml, "window1");
 hpaned = glade_xml_get_widget(xml, "hpaned1");
 vpaned = glade_xml_get_widget(xml, "vpaned1");
 tree1_w = glade_xml_get_widget(xml, "treeview1");
 tree2_w = glade_xml_get_widget(xml, "treeview2");
 text_w = glade_xml_get_widget(xml, "textview3");

 back_btn = glade_xml_get_widget(xml, "button1");
 gtk_widget_set_sensitive(back_btn, FALSE);

 widget = glade_xml_get_widget(xml, "show_name1");
 gtk_check_menu_item_set_active((GtkCheckMenuItem *) widget,
           show_name);

 widget = glade_xml_get_widget(xml, "show_range1");
 gtk_check_menu_item_set_active((GtkCheckMenuItem *) widget,
           show_range);

 widget = glade_xml_get_widget(xml, "show_data1");
 gtk_check_menu_item_set_active((GtkCheckMenuItem *) widget,
           show_value);

 save_btn = glade_xml_get_widget(xml, "button3");
 save_menu_item = glade_xml_get_widget(xml, "save1");
 conf_set_changed_callback(conf_changed);

 style = gtk_widget_get_style(main_wnd);
 widget = glade_xml_get_widget(xml, "toolbar1");
 replace_button_icon(xml, main_wnd->window, style,
       "button4", (gchar **) xpm_single_view);
 replace_button_icon(xml, main_wnd->window, style,
       "button5", (gchar **) xpm_split_view);
 replace_button_icon(xml, main_wnd->window, style,
       "button6", (gchar **) xpm_tree_view);
 txtbuf = gtk_text_view_get_buffer(GTK_TEXT_VIEW(text_w));
 tag1 = gtk_text_buffer_create_tag(txtbuf, "mytag1",
       "foreground", "red",
       "weight", PANGO_WEIGHT_BOLD,
       ((void*)0));
 tag2 = gtk_text_buffer_create_tag(txtbuf, "mytag2",

       ((void*)0));

 sprintf(title, _("Linux Kernel v%s Configuration"),
  getenv("KERNELVERSION"));
 gtk_window_set_title(GTK_WINDOW(main_wnd), title);

 gtk_widget_show(main_wnd);
}
