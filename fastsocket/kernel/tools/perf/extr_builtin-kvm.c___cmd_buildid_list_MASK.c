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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char** FUNC1 (int,int) ; 
 int FUNC2 (int,char const**,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(const char *file_name, int argc, const char **argv)
{
	int rec_argc, i = 0, j;
	const char **rec_argv;

	rec_argc = argc + 2;
	rec_argv = FUNC1(rec_argc + 1, sizeof(char *));
	rec_argv[i++] = FUNC3("buildid-list");
	rec_argv[i++] = FUNC3("-i");
	rec_argv[i++] = FUNC3(file_name);
	for (j = 1; j < argc; j++, i++)
		rec_argv[i] = argv[j];

	FUNC0(i != rec_argc);

	return FUNC2(i, rec_argv, NULL);
}