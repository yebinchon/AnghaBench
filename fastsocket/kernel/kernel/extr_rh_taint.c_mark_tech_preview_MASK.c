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
struct module {char* name; unsigned int taints; } ;

/* Variables and functions */
 unsigned int TAINT_TECH_PREVIEW ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

void FUNC2(const char *msg, struct module *mod)
{
	const char *str = NULL;

	if (msg)
		str = msg;
	else if (mod && mod->name)
		str = mod->name;
	
	FUNC1("TECH PREVIEW: %s may not be fully supported.\n"
		   "Please review provided documentation for limitations.\n",
		   (str ? str : "kernel"));
	FUNC0(TAINT_TECH_PREVIEW);
	if (mod)
        	mod->taints |= (1U << TAINT_TECH_PREVIEW);
}