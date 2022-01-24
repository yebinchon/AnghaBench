#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* type; int (* handler ) (char*) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* file_handler_table ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (char*) ; 
 char* FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11 (int argc, char *argv[])
{
	FILE *cpio_list;
	char line[LINE_SIZE];
	char *args, *type;
	int ec = 0;
	int line_nr = 0;

	if (2 != argc) {
		FUNC10(argv[0]);
		FUNC1(1);
	}

	if (!FUNC5(argv[1], "-"))
		cpio_list = stdin;
	else if (! (cpio_list = FUNC3(argv[1], "r"))) {
		FUNC4(stderr, "ERROR: unable to open '%s': %s\n\n",
			argv[1], FUNC6(errno));
		FUNC10(argv[0]);
		FUNC1(1);
	}

	while (FUNC2(line, LINE_SIZE, cpio_list)) {
		int type_idx;
		size_t slen = FUNC7(line);

		line_nr++;

		if ('#' == *line) {
			/* comment - skip to next line */
			continue;
		}

		if (! (type = FUNC8(line, " \t"))) {
			FUNC4(stderr,
				"ERROR: incorrect format, could not locate file type line %d: '%s'\n",
				line_nr, line);
			ec = -1;
			break;
		}

		if ('\n' == *type) {
			/* a blank line */
			continue;
		}

		if (slen == FUNC7(type)) {
			/* must be an empty line */
			continue;
		}

		if (! (args = FUNC8(NULL, "\n"))) {
			FUNC4(stderr,
				"ERROR: incorrect format, newline required line %d: '%s'\n",
				line_nr, line);
			ec = -1;
		}

		for (type_idx = 0; file_handler_table[type_idx].type; type_idx++) {
			int rc;
			if (! FUNC5(line, file_handler_table[type_idx].type)) {
				if ((rc = file_handler_table[type_idx].handler(args))) {
					ec = rc;
					FUNC4(stderr, " line %d\n", line_nr);
				}
				break;
			}
		}

		if (NULL == file_handler_table[type_idx].type) {
			FUNC4(stderr, "unknown file type line %d: '%s'\n",
				line_nr, line);
		}
	}
	if (ec == 0)
		FUNC0();

	FUNC1(ec);
}