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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2(void)
{
	FUNC1(stderr, "Usage:\n");
	FUNC1(stderr, "\twol -i monitor_dev -m DE:VI:CE:MA:CW:OL -n #num -v\n");

	FUNC1(stderr, "\nDescription:\n");
	FUNC1(stderr, "\tThis utility generates a WOL packet for the"
			"given [MAC] address and tries to injects"
			"it into [monitor_dev]\n");

	FUNC0(EXIT_FAILURE);
}