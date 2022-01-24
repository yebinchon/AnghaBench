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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 unsigned int max_freq ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 unsigned int FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char *FUNC6(void)
{
	static char cpu_m[255];
	char buf[256];
	FILE *file;

	cpu_m[0] = 0;
	/* CPU type */
	file = FUNC2("/proc/cpuinfo", "r");
	if (file) {
		while (FUNC1(buf, 255, file)) {
			if (FUNC4(buf, "model name")) {
				FUNC3(cpu_m, &buf[13], 255);
				break;
			}
		}
		FUNC0(file);
	}

	/* CPU type */
	file = FUNC2("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies", "r");
	if (file) {
		while (FUNC1(buf, 255, file)) {
			unsigned int freq;
			freq = FUNC5(buf, NULL, 10);
			if (freq > max_freq)
				max_freq = freq;
		}
		FUNC0(file);
	}
	return cpu_m;
}