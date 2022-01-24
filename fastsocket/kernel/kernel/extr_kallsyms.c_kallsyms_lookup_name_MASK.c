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
 int KSYM_NAME_LEN ; 
 unsigned long* kallsyms_addresses ; 
 unsigned int FUNC0 (unsigned int,char*) ; 
 unsigned long kallsyms_num_syms ; 
 unsigned long FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

unsigned long FUNC3(const char *name)
{
	char namebuf[KSYM_NAME_LEN];
	unsigned long i;
	unsigned int off;

	for (i = 0, off = 0; i < kallsyms_num_syms; i++) {
		off = FUNC0(off, namebuf);

		if (FUNC2(namebuf, name) == 0)
			return kallsyms_addresses[i];
	}
	return FUNC1(name);
}