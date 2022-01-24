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
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 scalar_t__ end_reached ; 
 scalar_t__ page_length ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(WINDOW * win, int height, int width)
{
	int i, passed_end = 0;

	page_length = 0;
	for (i = 0; i < height; i++) {
		FUNC0(win, i, width);
		if (!passed_end)
			page_length++;
		if (end_reached && !passed_end)
			passed_end = 1;
	}
	FUNC1(win);
}