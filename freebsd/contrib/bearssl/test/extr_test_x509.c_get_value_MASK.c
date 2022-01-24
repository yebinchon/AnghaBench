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
typedef  int /*<<< orphan*/  HT ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,long) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static char *
FUNC3(char *objtype, HT *objdata, long linenum, char *name)
{
	char *value;

	value = FUNC0(objdata, name);
	if (value == NULL) {
		FUNC2(stderr,
			"missing property '%s' in section '%s' (line %ld)\n",
			name, objtype, linenum);
		FUNC1(EXIT_FAILURE);
	}
	return value;
}