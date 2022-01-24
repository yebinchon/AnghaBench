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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (char**,char*,int*,int) ; 

__attribute__((used)) static int FUNC6(char *orig, char *copy)
{
	int fnosec, fsec, rc = 0;
	char *in_save, *in_curr, *in_end;
	char *sec_curr, *nosec_save, *nosec;
	int open_quote = 0;

	in_curr = orig;
	sec_curr = copy;

	nosec = (char *)FUNC1(GFP_KERNEL);
	if (!nosec) {
		rc = -ENOMEM;
		goto out;
	}

	nosec_save = nosec;
	fnosec = fsec = 1;
	in_save = in_end = orig;

	do {
		if (*in_end == '"')
			open_quote = !open_quote;
		if ((*in_end == ',' && open_quote == 0) ||
				*in_end == '\0') {
			int len = in_end - in_curr;

			if (FUNC2(in_curr, len))
				FUNC5(&sec_curr, in_curr, &fsec, len);
			else
				FUNC4(&nosec, in_curr, &fnosec, len);

			in_curr = in_end + 1;
		}
	} while (*in_end++);

	FUNC3(in_save, nosec_save);
	FUNC0((unsigned long)nosec_save);
out:
	return rc;
}