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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 unsigned long long turbo_frequency ; 

__attribute__((used)) static char *FUNC2(unsigned long hz)
{
	static char buffer[1024];
	unsigned long long Hz;

	FUNC0(buffer, 0, 1024);

	Hz = hz;

	/* default: just put the Number in */
	FUNC1(buffer, "%9lli", Hz);

	if (Hz > 1000)
		FUNC1(buffer, " %6lli Mhz", (Hz+500)/1000);

	if (Hz > 1500000)
		FUNC1(buffer, " %6.2f Ghz", (Hz+5000.0)/1000000);

	if (Hz == turbo_frequency)
		FUNC1(buffer, "Turbo");

	return buffer;
}