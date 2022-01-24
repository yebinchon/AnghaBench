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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (char const*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(const char *path, const char *page)
{
	const char *display = FUNC1("DISPLAY");
	if (display && *display) {
		struct strbuf man_page = STRBUF_INIT;
		const char *filename = "kfmclient";

		/* It's simpler to launch konqueror using kfmclient. */
		if (path) {
			const char *file = FUNC7(path, '/');
			if (file && !FUNC3(file + 1, "konqueror")) {
				char *new = FUNC5(path);
				char *dest = FUNC7(new, '/');

				/* strlen("konqueror") == strlen("kfmclient") */
				FUNC4(dest + 1, "kfmclient");
				path = new;
			}
			if (file)
				filename = file;
		} else
			path = "kfmclient";
		FUNC2(&man_page, "man:%s(1)", page);
		FUNC0(path, filename, "newTab", man_page.buf, NULL);
		FUNC8("failed to exec '%s': %s", path, FUNC6(errno));
	}
}