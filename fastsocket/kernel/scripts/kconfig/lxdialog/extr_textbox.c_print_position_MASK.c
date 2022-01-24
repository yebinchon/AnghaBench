#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_3__ {int atr; } ;
struct TYPE_4__ {TYPE_1__ position_indicator; } ;

/* Variables and functions */
 int A_COLOR ; 
 int buf ; 
 TYPE_2__ dlg ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int page ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC7(WINDOW * win)
{
	int percent;

	FUNC3(win, dlg.position_indicator.atr);
	FUNC4(win, dlg.position_indicator.atr & A_COLOR);
	percent = (page - buf) * 100 / FUNC2(buf);
	FUNC5(win, FUNC1(win) - 3, FUNC0(win) - 9);
	FUNC6(win, "(%3d%%)", percent);
}