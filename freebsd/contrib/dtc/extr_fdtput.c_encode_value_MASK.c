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
typedef  char uint8_t ;
struct display_info {char type; int size; scalar_t__ verbose; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*,int) ; 

__attribute__((used)) static int FUNC6(struct display_info *disp, char **arg, int arg_count,
			char **valuep, int *value_len)
{
	char *value = NULL;	/* holding area for value */
	int value_size = 0;	/* size of holding area */
	char *ptr;		/* pointer to current value position */
	int len;		/* length of this cell/string/byte */
	int ival;
	int upto;	/* the number of bytes we have written to buf */
	char fmt[3];

	upto = 0;

	if (disp->verbose)
		FUNC1(stderr, "Decoding value:\n");

	fmt[0] = '%';
	fmt[1] = disp->type ? disp->type : 'd';
	fmt[2] = '\0';
	for (; arg_count > 0; arg++, arg_count--, upto += len) {
		/* assume integer unless told otherwise */
		if (disp->type == 's')
			len = FUNC4(*arg) + 1;
		else
			len = disp->size == -1 ? 4 : disp->size;

		/* enlarge our value buffer by a suitable margin if needed */
		if (upto + len > value_size) {
			value_size = (upto + len) + 500;
			value = FUNC5(value, value_size);
		}

		ptr = value + upto;
		if (disp->type == 's') {
			FUNC2(ptr, *arg, len);
			if (disp->verbose)
				FUNC1(stderr, "\tstring: '%s'\n", ptr);
		} else {
			int *iptr = (int *)ptr;
			FUNC3(*arg, fmt, &ival);
			if (len == 4)
				*iptr = FUNC0(ival);
			else
				*ptr = (uint8_t)ival;
			if (disp->verbose) {
				FUNC1(stderr, "\t%s: %d\n",
					disp->size == 1 ? "byte" :
					disp->size == 2 ? "short" : "int",
					ival);
			}
		}
	}
	*value_len = upto;
	*valuep = value;
	if (disp->verbose)
		FUNC1(stderr, "Value size %d\n", upto);
	return 0;
}