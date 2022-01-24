#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ui_browser {scalar_t__ height; } ;
struct TYPE_2__ {scalar_t__ jump_arrows; } ;

/* Variables and functions */
 int /*<<< orphan*/  HE_COLORSET_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct ui_browser*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_browser*) ; 
 TYPE_1__ annotate_browser__opts ; 
 int FUNC2 (struct ui_browser*) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_browser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC4(struct ui_browser *browser)
{
	int ret = FUNC2(browser);

	if (annotate_browser__opts.jump_arrows)
		FUNC1(browser);

	FUNC3(browser, HE_COLORSET_NORMAL);
	FUNC0(browser, 7, 0, browser->height - 1);
	return ret;
}