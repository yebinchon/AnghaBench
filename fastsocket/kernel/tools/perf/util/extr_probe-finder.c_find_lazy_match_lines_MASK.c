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
struct list_head {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct list_head*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (char*,char const*) ; 

__attribute__((used)) static int FUNC10(struct list_head *head,
				 const char *fname, const char *pat)
{
	FILE *fp;
	char *line = NULL;
	size_t line_len;
	ssize_t len;
	int count = 0, linenum = 1;

	fp = FUNC2(fname, "r");
	if (!fp) {
		FUNC7("Failed to open %s: %s\n", fname, FUNC8(errno));
		return -errno;
	}

	while ((len = FUNC4(&line, &line_len, fp)) > 0) {

		if (line[len - 1] == '\n')
			line[len - 1] = '\0';

		if (FUNC9(line, pat)) {
			FUNC5(head, linenum);
			count++;
		}
		linenum++;
	}

	if (FUNC1(fp))
		count = -errno;
	FUNC3(line);
	FUNC0(fp);

	if (count == 0)
		FUNC6("No matched lines found in %s.\n", fname);
	return count;
}