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
struct cmdnames {unsigned int cnt; TYPE_1__** names; } ;
struct TYPE_2__ {unsigned int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,scalar_t__) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct cmdnames*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 scalar_t__ FUNC5 (char const*) ; 

void FUNC6(const char *title, struct cmdnames *main_cmds,
		   struct cmdnames *other_cmds)
{
	unsigned int i, longest = 0;

	for (i = 0; i < main_cmds->cnt; i++)
		if (longest < main_cmds->names[i]->len)
			longest = main_cmds->names[i]->len;
	for (i = 0; i < other_cmds->cnt; i++)
		if (longest < other_cmds->names[i]->len)
			longest = other_cmds->names[i]->len;

	if (main_cmds->cnt) {
		const char *exec_path = FUNC1();
		FUNC3("available %s in '%s'\n", title, exec_path);
		FUNC3("----------------");
		FUNC0('-', FUNC5(title) + FUNC5(exec_path));
		FUNC4('\n');
		FUNC2(main_cmds, longest);
		FUNC4('\n');
	}

	if (other_cmds->cnt) {
		FUNC3("%s available from elsewhere on your $PATH\n", title);
		FUNC3("---------------------------------------");
		FUNC0('-', FUNC5(title));
		FUNC4('\n');
		FUNC2(other_cmds, longest);
		FUNC4('\n');
	}
}