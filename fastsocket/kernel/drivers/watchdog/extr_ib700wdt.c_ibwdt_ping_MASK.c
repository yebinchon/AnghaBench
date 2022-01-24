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

/* Variables and functions */
 int /*<<< orphan*/  WDT_START ; 
 int /*<<< orphan*/  ibwdt_lock ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int timeout ; 

__attribute__((used)) static void FUNC3(void)
{
	int wd_margin = 15 - ((timeout + 1) / 2);

	FUNC1(&ibwdt_lock);

	/* Write a watchdog value */
	FUNC0(wd_margin, WDT_START);

	FUNC2(&ibwdt_lock);
}