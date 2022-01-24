#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_11__ {int /*<<< orphan*/  atr; } ;
struct TYPE_10__ {int /*<<< orphan*/  atr; } ;
struct TYPE_9__ {int /*<<< orphan*/  atr; } ;
struct TYPE_8__ {int /*<<< orphan*/  atr; } ;
struct TYPE_7__ {int /*<<< orphan*/  atr; } ;
struct TYPE_12__ {TYPE_5__ tag_key; TYPE_4__ tag_key_selected; TYPE_3__ item; TYPE_2__ item_selected; TYPE_1__ menubox; } ;

/* Variables and functions */
 TYPE_6__ dlg ; 
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int item_x ; 
 char* FUNC2 (int) ; 
 int menu_width ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(WINDOW * win, const char *item, int line_y,
                          int selected, int hotkey)
{
	int j;
	char *menu_item = FUNC2(menu_width + 1);

	FUNC5(menu_item, item, menu_width - item_x);
	menu_item[menu_width - item_x] = '\0';
	j = FUNC0(menu_item, "YyNnMmHh");

	/* Clear 'residue' of last item */
	FUNC7(win, dlg.menubox.atr);
	FUNC9(win, line_y, 0);
#if OLD_NCURSES
	{
		int i;
		for (i = 0; i < menu_width; i++)
			waddch(win, ' ');
	}
#else
	FUNC8(win);
#endif
	FUNC7(win, selected ? dlg.item_selected.atr : dlg.item.atr);
	FUNC4(win, line_y, item_x, menu_item);
	if (hotkey) {
		FUNC7(win, selected ? dlg.tag_key_selected.atr
			 : dlg.tag_key.atr);
		FUNC3(win, line_y, item_x + j, menu_item[j]);
	}
	if (selected) {
		FUNC9(win, line_y, item_x + 1);
	}
	FUNC1(menu_item);
	FUNC10(win);
}