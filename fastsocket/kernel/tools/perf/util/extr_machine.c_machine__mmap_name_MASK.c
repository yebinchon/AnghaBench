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
struct machine {int pid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct machine*) ; 
 scalar_t__ FUNC1 (struct machine*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*,...) ; 

char *FUNC3(struct machine *machine, char *bf, size_t size)
{
	if (FUNC1(machine))
		FUNC2(bf, size, "[%s]", "kernel.kallsyms");
	else if (FUNC0(machine))
		FUNC2(bf, size, "[%s]", "guest.kernel.kallsyms");
	else {
		FUNC2(bf, size, "[%s.%d]", "guest.kernel.kallsyms",
			 machine->pid);
	}

	return bf;
}