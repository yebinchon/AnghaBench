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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static bool FUNC5(void)
{
	bool value = false;

	if (FUNC4() != 0) {
		FILE *fp = FUNC3("/proc/sys/kernel/kptr_restrict", "r");
		if (fp != NULL) {
			char line[8];

			if (FUNC2(line, sizeof(line), fp) != NULL)
				value = FUNC0(line) != 0;

			FUNC1(fp);
		}
	}

	return value;
}