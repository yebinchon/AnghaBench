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
 int /*<<< orphan*/  HZ ; 
 scalar_t__ rcutorture_runnable ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ stutter_pause_test ; 

__attribute__((used)) static void
FUNC3(char *title)
{
	while (stutter_pause_test || !rcutorture_runnable) {
		if (rcutorture_runnable)
			FUNC2(1);
		else
			FUNC2(FUNC1(HZ));
		FUNC0(title);
	}
}