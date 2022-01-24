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
struct TYPE_2__ {int /*<<< orphan*/  desc; scalar_t__ func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* tests ; 

__attribute__((used)) static int FUNC2(int argc, const char **argv)
{
	int i = 0;

	while (tests[i].func) {
		int curr = i++;

		if (argc > 1 && !FUNC1(tests[curr].desc, argv[1]))
			continue;

		FUNC0("%2d: %s\n", i, tests[curr].desc);
	}

	return 0;
}