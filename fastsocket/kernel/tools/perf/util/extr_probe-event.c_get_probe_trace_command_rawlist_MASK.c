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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_CMDLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (struct strlist*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct strlist*) ; 
 struct strlist* FUNC10 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct strlist *FUNC11(int fd)
{
	int ret, idx;
	FILE *fp;
	char buf[MAX_CMDLEN];
	char *p;
	struct strlist *sl;

	sl = FUNC10(true, NULL);

	fp = FUNC2(FUNC0(fd), "r");
	while (!FUNC3(fp)) {
		p = FUNC4(buf, MAX_CMDLEN, fp);
		if (!p)
			break;

		idx = FUNC7(p) - 1;
		if (p[idx] == '\n')
			p[idx] = '\0';
		ret = FUNC8(sl, buf);
		if (ret < 0) {
			FUNC5("strlist__add failed: %s\n", FUNC6(-ret));
			FUNC9(sl);
			return NULL;
		}
	}
	FUNC1(fp);

	return sl;
}