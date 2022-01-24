#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* name; int hits; int /*<<< orphan*/  files; } ;
typedef  TYPE_1__ Path ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int hits ; 

__attribute__((used)) static char *
FUNC4(Path *p, const char *name, const char *cp)
{
	char *p1;		/* pointer into p->name */
	const char *p2;		/* pointer into name */

	if (FUNC0(DIR)) {
		FUNC3(debug_file, "   %s ...\n", p->name);
	}

	/*
	 * If the file has a leading path component and that component
	 * exactly matches the entire name of the current search
	 * directory, we can attempt another cache lookup. And if we don't
	 * have a hit, we can safely assume the file does not exist at all.
	 */
	for (p1 = p->name, p2 = name; *p1 && *p1 == *p2; p1++, p2++) {
		continue;
	}
	if (*p1 != '\0' || p2 != cp - 1) {
		return NULL;
	}

	if (FUNC1(&p->files, cp) == NULL) {
		if (FUNC0(DIR)) {
			FUNC3(debug_file, "   must be here but isn't -- returning\n");
		}
		/* Return empty string: terminates search */
		return FUNC2("");
	}

	p->hits += 1;
	hits += 1;
	if (FUNC0(DIR)) {
		FUNC3(debug_file, "   returning %s\n", name);
	}
	return (FUNC2(name));
}