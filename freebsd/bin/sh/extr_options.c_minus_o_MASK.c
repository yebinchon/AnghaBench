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
 int NOPTS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (unsigned char const*,char*,size_t) ; 
 unsigned char* optname ; 
 scalar_t__* optval ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 size_t FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(char *name, int val)
{
	int i;
	const unsigned char *on;
	size_t len;

	if (name == NULL) {
		if (val) {
			/* "Pretty" output. */
			FUNC3("Current option settings\n");
			for (i = 0, on = optname; i < NOPTS; i++, on += *on + 1)
				FUNC2("%-16.*s%s\n", *on, on + 1,
					optval[i] ? "on" : "off");
		} else {
			/* Output suitable for re-input to shell. */
			for (i = 0, on = optname; i < NOPTS; i++, on += *on + 1)
				FUNC2("%s %co %.*s%s",
				    i % 6 == 0 ? "set" : "",
				    optval[i] ? '-' : '+',
				    *on, on + 1,
				    i % 6 == 5 || i == NOPTS - 1 ? "\n" : "");
		}
	} else {
		len = FUNC5(name);
		for (i = 0, on = optname; i < NOPTS; i++, on += *on + 1)
			if (*on == len && FUNC1(on + 1, name, len) == 0) {
				FUNC4(i, val);
				return;
			}
		FUNC0("Illegal option -o %s", name);
	}
}