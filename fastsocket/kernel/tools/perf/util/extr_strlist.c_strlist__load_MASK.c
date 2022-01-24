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
typedef  int /*<<< orphan*/  entry ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 size_t FUNC3 (char*) ; 
 int FUNC4 (struct strlist*,char*) ; 

int FUNC5(struct strlist *self, const char *filename)
{
	char entry[1024];
	int err;
	FILE *fp = FUNC2(filename, "r");

	if (fp == NULL)
		return errno;

	while (FUNC1(entry, sizeof(entry), fp) != NULL) {
		const size_t len = FUNC3(entry);

		if (len == 0)
			continue;
		entry[len - 1] = '\0';

		err = FUNC4(self, entry);
		if (err != 0)
			goto out;
	}

	err = 0;
out:
	FUNC0(fp);
	return err;
}