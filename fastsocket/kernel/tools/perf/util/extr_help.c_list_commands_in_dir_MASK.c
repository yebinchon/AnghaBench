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
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct dirent {char const* d_name; } ;
struct cmdnames {int dummy; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct cmdnames*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int) ; 
 int FUNC11 (char const*) ; 

__attribute__((used)) static void FUNC12(struct cmdnames *cmds,
					 const char *path,
					 const char *prefix)
{
	int prefix_len;
	DIR *dir = FUNC4(path);
	struct dirent *de;
	struct strbuf buf = STRBUF_INIT;
	int len;

	if (!dir)
		return;
	if (!prefix)
		prefix = "perf-";
	prefix_len = FUNC11(prefix);

	FUNC7(&buf, "%s/", path);
	len = buf.len;

	while ((de = FUNC6(dir)) != NULL) {
		int entlen;

		if (FUNC5(de->d_name, prefix))
			continue;

		FUNC10(&buf, len);
		FUNC8(&buf, de->d_name);
		if (!FUNC3(buf.buf))
			continue;

		entlen = FUNC11(de->d_name) - prefix_len;
		if (FUNC2(de->d_name, ".exe"))
			entlen -= 4;

		FUNC0(cmds, de->d_name + prefix_len, entlen);
	}
	FUNC1(dir);
	FUNC9(&buf);
}