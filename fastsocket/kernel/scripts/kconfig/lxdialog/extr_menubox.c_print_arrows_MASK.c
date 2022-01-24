#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_9__ {int /*<<< orphan*/  atr; } ;
struct TYPE_8__ {int /*<<< orphan*/  atr; } ;
struct TYPE_7__ {int /*<<< orphan*/  atr; } ;
struct TYPE_6__ {int /*<<< orphan*/  atr; } ;
struct TYPE_10__ {TYPE_4__ menubox_border; TYPE_3__ darrow; TYPE_2__ menubox; TYPE_1__ uarrow; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACS_DARROW ; 
 int /*<<< orphan*/  ACS_HLINE ; 
 int /*<<< orphan*/  ACS_UARROW ; 
 TYPE_5__ dlg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(WINDOW * win, int item_no, int scroll, int y, int x,
			 int height)
{
	int cur_y, cur_x;

	FUNC0(win, cur_y, cur_x);

	FUNC4(win, y, x);

	if (scroll > 0) {
		FUNC3(win, dlg.uarrow.atr);
		FUNC1(win, ACS_UARROW);
		FUNC2(win, "(-)");
	} else {
		FUNC3(win, dlg.menubox.atr);
		FUNC1(win, ACS_HLINE);
		FUNC1(win, ACS_HLINE);
		FUNC1(win, ACS_HLINE);
		FUNC1(win, ACS_HLINE);
	}

	y = y + height + 1;
	FUNC4(win, y, x);
	FUNC5(win);

	if ((height < item_no) && (scroll + height < item_no)) {
		FUNC3(win, dlg.darrow.atr);
		FUNC1(win, ACS_DARROW);
		FUNC2(win, "(+)");
	} else {
		FUNC3(win, dlg.menubox_border.atr);
		FUNC1(win, ACS_HLINE);
		FUNC1(win, ACS_HLINE);
		FUNC1(win, ACS_HLINE);
		FUNC1(win, ACS_HLINE);
	}

	FUNC4(win, cur_y, cur_x);
	FUNC5(win);
}