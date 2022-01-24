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
struct ui_browser {int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int /*<<< orphan*/  HE_COLORSET_NORMAL ; 
 int /*<<< orphan*/  HE_COLORSET_SELECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ui_browser*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_browser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ui_browser *browser,
				   void *entry, int row)
{
	char **arg = entry;
	bool current_entry = FUNC1(browser, row);

	FUNC2(browser, current_entry ? HE_COLORSET_SELECTED :
						       HE_COLORSET_NORMAL);
	FUNC0(*arg, browser->width);
}