#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_5__ {int /*<<< orphan*/  window; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkTextBuffer ;
typedef  int /*<<< orphan*/  GtkStyle ;
typedef  int /*<<< orphan*/  GtkCheckMenuItem ;
typedef  int /*<<< orphan*/  GladeXML ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  FULL_VIEW 130 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  PANGO_WEIGHT_BOLD ; 
#define  SINGLE_VIEW 129 
#define  SPLIT_VIEW 128 
 char* FUNC2 (char*) ; 
 void* back_btn ; 
 int /*<<< orphan*/  conf_changed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 void* hpaned ; 
 TYPE_1__* main_wnd ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 void* save_btn ; 
 void* save_menu_item ; 
 int /*<<< orphan*/  show_name ; 
 int /*<<< orphan*/  show_range ; 
 int /*<<< orphan*/  show_value ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,char*) ; 
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

void FUNC19(const gchar * glade_file)
{
	GladeXML *xml;
	GtkWidget *widget;
	GtkTextBuffer *txtbuf;
	char title[256];
	GtkStyle *style;

	xml = FUNC8(glade_file, "window1", NULL);
	if (!xml)
		FUNC4(FUNC2("GUI loading failed !\n"));
	FUNC9(xml);

	main_wnd = FUNC7(xml, "window1");
	hpaned = FUNC7(xml, "hpaned1");
	vpaned = FUNC7(xml, "vpaned1");
	tree1_w = FUNC7(xml, "treeview1");
	tree2_w = FUNC7(xml, "treeview2");
	text_w = FUNC7(xml, "textview3");

	back_btn = FUNC7(xml, "button1");
	FUNC14(back_btn, FALSE);

	widget = FUNC7(xml, "show_name1");
	FUNC10((GtkCheckMenuItem *) widget,
				       show_name);

	widget = FUNC7(xml, "show_range1");
	FUNC10((GtkCheckMenuItem *) widget,
				       show_range);

	widget = FUNC7(xml, "show_data1");
	FUNC10((GtkCheckMenuItem *) widget,
				       show_value);

	save_btn = FUNC7(xml, "button3");
	save_menu_item = FUNC7(xml, "save1");
	FUNC3(conf_changed);

	style = FUNC13(main_wnd);
	widget = FUNC7(xml, "toolbar1");

#if 0	/* Use stock Gtk icons instead */
	replace_button_icon(xml, main_wnd->window, style,
			    "button1", (gchar **) xpm_back);
	replace_button_icon(xml, main_wnd->window, style,
			    "button2", (gchar **) xpm_load);
	replace_button_icon(xml, main_wnd->window, style,
			    "button3", (gchar **) xpm_save);
#endif
	FUNC17(xml, main_wnd->window, style,
			    "button4", (gchar **) xpm_single_view);
	FUNC17(xml, main_wnd->window, style,
			    "button5", (gchar **) xpm_split_view);
	FUNC17(xml, main_wnd->window, style,
			    "button6", (gchar **) xpm_tree_view);

#if 0
	switch (view_mode) {
	case SINGLE_VIEW:
		widget = glade_xml_get_widget(xml, "button4");
		g_signal_emit_by_name(widget, "clicked");
		break;
	case SPLIT_VIEW:
		widget = glade_xml_get_widget(xml, "button5");
		g_signal_emit_by_name(widget, "clicked");
		break;
	case FULL_VIEW:
		widget = glade_xml_get_widget(xml, "button6");
		g_signal_emit_by_name(widget, "clicked");
		break;
	}
#endif
	txtbuf = FUNC12(FUNC0(text_w));
	tag1 = FUNC11(txtbuf, "mytag1",
					  "foreground", "red",
					  "weight", PANGO_WEIGHT_BOLD,
					  NULL);
	tag2 = FUNC11(txtbuf, "mytag2",
					  /*"style", PANGO_STYLE_OBLIQUE, */
					  NULL);

	FUNC18(title, FUNC2("Linux Kernel v%s Configuration"),
		FUNC6("KERNELVERSION"));
	FUNC16(FUNC1(main_wnd), title);

	FUNC15(main_wnd);
}