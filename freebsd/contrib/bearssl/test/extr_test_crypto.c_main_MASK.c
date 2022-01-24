#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; int /*<<< orphan*/  (* fn ) () ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* tfns ; 

int
FUNC3(int argc, char *argv[])
{
	size_t u;

	if (argc <= 1) {
		FUNC1("usage: testcrypto all | name...\n");
		FUNC1("individual test names:\n");
		for (u = 0; tfns[u].name; u ++) {
			FUNC1("   %s\n", tfns[u].name);
		}
	} else {
		for (u = 0; tfns[u].name; u ++) {
			int i;

			for (i = 1; i < argc; i ++) {
				if (FUNC0(argv[i], tfns[u].name)
					|| FUNC0(argv[i], "all"))
				{
					tfns[u].fn();
					break;
				}
			}
		}
	}
	return 0;
}