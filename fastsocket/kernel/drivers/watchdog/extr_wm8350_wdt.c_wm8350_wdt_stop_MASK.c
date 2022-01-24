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
typedef  int /*<<< orphan*/  u16 ;
struct wm8350 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8350_SYSTEM_CONTROL_2 ; 
 int /*<<< orphan*/  WM8350_WDOG_MODE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct wm8350*) ; 
 int /*<<< orphan*/  FUNC3 (struct wm8350*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8350*) ; 
 int FUNC5 (struct wm8350*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct wm8350 *wm8350)
{
	int ret;
	u16 reg;

	FUNC0(&wdt_mutex);
	FUNC4(wm8350);

	reg = FUNC3(wm8350, WM8350_SYSTEM_CONTROL_2);
	reg &= ~WM8350_WDOG_MODE_MASK;
	ret = FUNC5(wm8350, WM8350_SYSTEM_CONTROL_2, reg);

	FUNC2(wm8350);
	FUNC1(&wdt_mutex);

	return ret;
}