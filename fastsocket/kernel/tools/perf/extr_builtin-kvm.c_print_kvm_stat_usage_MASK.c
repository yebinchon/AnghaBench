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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0("Usage: perf kvm stat <command>\n\n");

	FUNC0("# Available commands:\n");
	FUNC0("\trecord: record kvm events\n");
	FUNC0("\treport: report statistical data of kvm events\n");

	FUNC0("\nOtherwise, it is the alias of 'perf stat':\n");
}