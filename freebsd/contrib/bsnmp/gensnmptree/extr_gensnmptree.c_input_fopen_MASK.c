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
typedef  size_t u_int ;
struct TYPE_2__ {char* path; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__* input ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 char** paths ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char const*) ; 

__attribute__((used)) static void
FUNC3(const char *fname, int loc)
{
	FILE *fp;
	char *path;
	u_int p;

	if (fname[0] == '/') {
		if ((fp = FUNC2(NULL, fname)) != NULL) {
			FUNC0(fp, NULL, fname);
			return;
		}

	} else {
		if (loc) {
			if (input == NULL)
				path = NULL;
			else
				path = input->path;

			if ((fp = FUNC2(path, fname)) != NULL) {
				FUNC0(fp, NULL, fname);
				return;
			}
		}

		for (p = 0; paths[p] != NULL; p++)
			if ((fp = FUNC2(paths[p], fname)) != NULL) {
				FUNC0(fp, paths[p], fname);
				return;
			}
	}
	FUNC1("cannot open '%s'", fname);
}