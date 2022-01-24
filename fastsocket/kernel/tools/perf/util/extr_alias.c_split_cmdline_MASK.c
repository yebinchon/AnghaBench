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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 scalar_t__ FUNC2 (char) ; 
 char** FUNC3 (int) ; 
 char** FUNC4 (char const**,int) ; 

int FUNC5(char *cmdline, const char ***argv)
{
	int src, dst, count = 0, size = 16;
	char quoted = 0;

	*argv = FUNC3(sizeof(char*) * size);

	/* split alias_string */
	(*argv)[count++] = cmdline;
	for (src = dst = 0; cmdline[src];) {
		char c = cmdline[src];
		if (!quoted && FUNC2(c)) {
			cmdline[dst++] = 0;
			while (cmdline[++src]
					&& FUNC2(cmdline[src]))
				; /* skip */
			if (count >= size) {
				size += 16;
				*argv = FUNC4(*argv, sizeof(char*) * size);
			}
			(*argv)[count++] = cmdline + dst;
		} else if (!quoted && (c == '\'' || c == '"')) {
			quoted = c;
			src++;
		} else if (c == quoted) {
			quoted = 0;
			src++;
		} else {
			if (c == '\\' && quoted != '\'') {
				src++;
				c = cmdline[src];
				if (!c) {
					FUNC1(*argv);
					*argv = NULL;
					return FUNC0("cmdline ends with \\");
				}
			}
			cmdline[dst++] = c;
			src++;
		}
	}

	cmdline[dst] = 0;

	if (quoted) {
		FUNC1(*argv);
		*argv = NULL;
		return FUNC0("unclosed quote");
	}

	return count;
}