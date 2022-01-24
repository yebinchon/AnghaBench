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
struct annotate_browser {int /*<<< orphan*/  b; } ;

/* Variables and functions */
 int FUNC0 (struct annotate_browser*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct annotate_browser *browser,
						     int nr, bool current)
{
	 int color = FUNC0(browser, nr, current);
	 return FUNC1(&browser->b, color);
}