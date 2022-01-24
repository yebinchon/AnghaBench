#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  gpointer ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkMenuItem ;

/* Variables and functions */
 int /*<<< orphan*/  GTK_BUTTONS_CLOSE ; 
 int /*<<< orphan*/  GTK_DIALOG_DESTROY_WITH_PARENT ; 
 int /*<<< orphan*/  GTK_MESSAGE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  gtk_widget_destroy ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  main_wnd ; 

void FUNC7(GtkMenuItem * menuitem, gpointer user_data)
{
	GtkWidget *dialog;
	const gchar *about_text =
	    FUNC3("gkc is copyright (c) 2002 Romain Lievin <roms@lpg.ticalc.org>.\n"
	      "Based on the source code from Roman Zippel.\n");

	dialog = FUNC5(FUNC1(main_wnd),
					GTK_DIALOG_DESTROY_WITH_PARENT,
					GTK_MESSAGE_INFO,
					GTK_BUTTONS_CLOSE, about_text);
	FUNC4(FUNC0(dialog), "response",
				 FUNC2(gtk_widget_destroy),
				 FUNC0(dialog));
	FUNC6(dialog);
}