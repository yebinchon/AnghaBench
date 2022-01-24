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
struct console_cmdline {int index; char* options; scalar_t__* name; } ;

/* Variables and functions */
 int MAX_CMDLINECONSOLES ; 
 struct console_cmdline* console_cmdline ; 
 scalar_t__ FUNC0 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,char*,int) ; 

int FUNC2(char *name, int idx, char *name_new, int idx_new, char *options)
{
	struct console_cmdline *c;
	int i;

	for (i = 0; i < MAX_CMDLINECONSOLES && console_cmdline[i].name[0]; i++)
		if (FUNC0(console_cmdline[i].name, name) == 0 &&
			  console_cmdline[i].index == idx) {
				c = &console_cmdline[i];
				FUNC1(c->name, name_new, sizeof(c->name));
				c->name[sizeof(c->name) - 1] = 0;
				c->options = options;
				c->index = idx_new;
				return i;
		}
	/* not found */
	return -1;
}