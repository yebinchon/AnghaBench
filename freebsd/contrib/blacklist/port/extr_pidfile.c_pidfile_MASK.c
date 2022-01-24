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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char) ; 

int
FUNC4(const char *path)
{

	if (path == NULL || FUNC3(path, '/') == NULL) {
		char *default_path;

		if ((default_path = FUNC2(path)) == NULL)
			return -1;

		if (FUNC0(default_path) == -1) {
			FUNC1(default_path);
			return -1;
		}

		FUNC1(default_path);
		return 0;
	} else
		return FUNC0(path);
}