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
struct line_range {char* file; char* function; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (char*,char) ; 
 void* FUNC5 (char const*) ; 

int FUNC6(const char *arg, struct line_range *lr)
{
	char *range, *file, *name = FUNC5(arg);
	int err;

	if (!name)
		return -ENOMEM;

	lr->start = 0;
	lr->end = INT_MAX;

	range = FUNC4(name, ':');
	if (range) {
		*range++ = '\0';

		err = FUNC1(&range, &lr->start, "start line");
		if (err)
			goto err;

		if (*range == '+' || *range == '-') {
			const char c = *range++;

			err = FUNC1(&range, &lr->end, "end line");
			if (err)
				goto err;

			if (c == '+') {
				lr->end += lr->start;
				/*
				 * Adjust the number of lines here.
				 * If the number of lines == 1, the
				 * the end of line should be equal to
				 * the start of line.
				 */
				lr->end--;
			}
		}

		FUNC2("Line range is %d to %d\n", lr->start, lr->end);

		err = -EINVAL;
		if (lr->start > lr->end) {
			FUNC3("Start line must be smaller"
				       " than end line.\n");
			goto err;
		}
		if (*range != '\0') {
			FUNC3("Tailing with invalid str '%s'.\n", range);
			goto err;
		}
	}

	file = FUNC4(name, '@');
	if (file) {
		*file = '\0';
		lr->file = FUNC5(++file);
		if (lr->file == NULL) {
			err = -ENOMEM;
			goto err;
		}
		lr->function = name;
	} else if (FUNC4(name, '.'))
		lr->file = name;
	else
		lr->function = name;

	return 0;
err:
	FUNC0(name);
	return err;
}