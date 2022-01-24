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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  acl_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 size_t FUNC7 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int have_stdin ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

acl_t
FUNC9(const char *filename)
{
	FILE *file;
	size_t len;
	char buf[BUFSIZ+1];

	if (filename == NULL)
		FUNC1(1, "(null) filename in get_acl_from_file()");

	if (FUNC8(filename, "-") == 0) {
		if (have_stdin)
			FUNC1(1, "cannot specify more than one stdin");
		file = stdin;
		have_stdin = true;
	} else {
		file = FUNC6(filename, "r");
		if (file == NULL)
			FUNC1(1, "fopen() %s failed", filename);
	}

	len = FUNC7(buf, (size_t)1, sizeof(buf) - 1, file);
	buf[len] = '\0';
	if (FUNC5(file) != 0) {
		FUNC3(file);
		FUNC1(1, "error reading from %s", filename);
	} else if (FUNC4(file) == 0) {
		FUNC3(file);
		FUNC2(1, "line too long in %s", filename);
	}

	FUNC3(file);

	return (FUNC0(buf));
}