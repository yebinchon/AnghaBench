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
typedef  scalar_t__ u16 ;
struct ui_browser {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_browser*,scalar_t__,unsigned int) ; 

void FUNC3(struct ui_browser *browser, unsigned int column,
			 u16 start, u16 end)
{
	FUNC1(1);
	FUNC2(browser, start, column);
	FUNC0(end - start + 1);
	FUNC1(0);
}