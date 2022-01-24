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
typedef  int /*<<< orphan*/  sysevent_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(int argc, char **argv)
{
	sysevent_id_t id;

	for (;;) {
		if (FUNC2("class_dtest", "subclass_dtest",
		    "vendor_dtest", "publisher_dtest", NULL, &id) != 0) {
			(void) FUNC0(stderr, "failed to post sysevent\n");
			return (1);
		}

		FUNC1(1);
	}
}