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
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int PATH_MAX ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (char**,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int have_stdin ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 char** FUNC6 (size_t) ; 
 char** FUNC7 (char**,size_t) ; 

__attribute__((used)) static char **
FUNC8(void)
{
	char **files_list;
	char filename[PATH_MAX];
	size_t fl_count, i;

	if (have_stdin)
		FUNC1(1, "cannot have more than one stdin");

	i = 0;
	have_stdin = true;
	FUNC0(&filename, sizeof(filename));
	/* Start with an array size sufficient for basic cases. */
	fl_count = 1024;
	files_list = FUNC6(fl_count * sizeof(char *));
	while (FUNC3(filename, (int)sizeof(filename), stdin)) {
		/* remove the \n */
		filename[FUNC5(filename) - 1] = '\0';
		files_list[i] = FUNC4(filename);
		if (files_list[i] == NULL)
			FUNC1(1, "strdup() failed");
		/* Grow array if necessary. */
		if (++i == fl_count) {
			fl_count <<= 1;
			if (fl_count > SIZE_MAX / sizeof(char *))
				FUNC2(1, "Too many input files");
			files_list = FUNC7(files_list,
					fl_count * sizeof(char *));
		}
	}

	/* fts_open() requires the last array element to be NULL. */
	files_list[i] = NULL;

	return (files_list);
}