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
struct strlist {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int ERANGE ; 
 int MAX_EVENT_INDEX ; 
 int FUNC0 (char*,size_t,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct strlist*,char*) ; 

__attribute__((used)) static int FUNC5(char *buf, size_t len, const char *base,
			      struct strlist *namelist, bool allow_suffix)
{
	int i, ret;

	/* Try no suffix */
	ret = FUNC0(buf, len, "%s", base);
	if (ret < 0) {
		FUNC1("snprintf() failed: %s\n", FUNC3(-ret));
		return ret;
	}
	if (!FUNC4(namelist, buf))
		return 0;

	if (!allow_suffix) {
		FUNC2("Error: event \"%s\" already exists. "
			   "(Use -f to force duplicates.)\n", base);
		return -EEXIST;
	}

	/* Try to add suffix */
	for (i = 1; i < MAX_EVENT_INDEX; i++) {
		ret = FUNC0(buf, len, "%s_%d", base, i);
		if (ret < 0) {
			FUNC1("snprintf() failed: %s\n", FUNC3(-ret));
			return ret;
		}
		if (!FUNC4(namelist, buf))
			break;
	}
	if (i == MAX_EVENT_INDEX) {
		FUNC2("Too many events are on the same function.\n");
		ret = -ERANGE;
	}

	return ret;
}