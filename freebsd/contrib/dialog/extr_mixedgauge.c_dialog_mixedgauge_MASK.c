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
typedef  int /*<<< orphan*/  DIALOG_MIXEDGAUGE ;

/* Variables and functions */
 int /*<<< orphan*/  DLG_EXIT_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,char const*,char const*,int,int,int,char**) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

int
FUNC6(const char *title,
		  const char *cprompt,
		  int height,
		  int width,
		  int percent,
		  int item_no,
		  char **items)
{
    DIALOG_MIXEDGAUGE dlg;
    int began = 0;

    FUNC0(("# mixedgauge args:\n"));
    FUNC2("title", title);
    FUNC2("message", cprompt);
    FUNC1("height", height);
    FUNC1("width", width);
    FUNC1("percent", percent);
    FUNC1("llength", item_no);
    /* FIXME dump the items[][] too */

    FUNC3(&dlg, &began, title, cprompt, height,
			 width, item_no, items);

    FUNC5(&dlg, percent);

    return FUNC4(&dlg, DLG_EXIT_OK);
}