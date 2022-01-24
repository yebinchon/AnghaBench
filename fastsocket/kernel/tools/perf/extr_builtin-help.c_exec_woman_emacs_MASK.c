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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *path, const char *page)
{
	if (!FUNC0()) {
		/* This works only with emacsclient version >= 22. */
		struct strbuf man_page = STRBUF_INIT;

		if (!path)
			path = "emacsclient";
		FUNC2(&man_page, "(woman \"%s\")", page);
		FUNC1(path, "emacsclient", "-e", man_page.buf, NULL);
		FUNC4("failed to exec '%s': %s", path, FUNC3(errno));
	}
}