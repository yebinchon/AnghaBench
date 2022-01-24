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
struct dtc_file {char* name; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 char* FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct dtc_file *file,
                        const char *search,
                        const char *fname)
{
	char *fullname;

	if (search) {
		fullname = FUNC6(FUNC5(search) + FUNC5(fname) + 2);

		FUNC3(fullname, search);
		FUNC2(fullname, "/");
		FUNC2(fullname, fname);
	} else {
		fullname = FUNC4(fname);
	}

	file->file = FUNC0(fullname, "r");
	if (!file->file) {
		FUNC1(fullname);
		return 0;
	}

	file->name = fullname;
	return 1;
}