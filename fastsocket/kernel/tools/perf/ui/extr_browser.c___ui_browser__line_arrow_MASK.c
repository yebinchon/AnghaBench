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
typedef  scalar_t__ u64 ;
struct ui_browser {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_browser*,unsigned int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_browser*,unsigned int,scalar_t__,scalar_t__) ; 

void FUNC2(struct ui_browser *browser, unsigned int column,
			      u64 start, u64 end)
{
	if (start > end)
		FUNC1(browser, column, start, end);
	else
		FUNC0(browser, column, start, end);
}