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
typedef  int /*<<< orphan*/  evchan_t ;

/* Variables and functions */
 int EVCH_CREAT ; 
 int EVCH_HOLD_PEND ; 
 int /*<<< orphan*/  EVCH_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(int argc, char **argv)
{
	evchan_t *ch;

	if (FUNC2("channel_dtest", &ch,
	    EVCH_CREAT | EVCH_HOLD_PEND) != 0) {
		(void) FUNC0(stderr, "failed to bind to sysevent channel\n");
		return (1);
	}

	for (;;) {
		if (FUNC3(ch, "class_dtest", "subclass_dtest",
		    "vendor_dtest", "publisher_dtest", NULL, EVCH_SLEEP) != 0) {
			(void) FUNC4(ch);
			(void) FUNC0(stderr, "failed to publisth sysevent\n");
			return (1);
		}
		FUNC1(1);
	}
}