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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 size_t FUNC3 (void const*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC4(const char *name, const void *data, size_t len)
{
	FILE *f;

	f = FUNC1(name, "wb");
	if (f == NULL) {
		FUNC2(stderr,
			"ERROR: cannot open file '%s' for writing\n",
			name);
		return 0;
	}
	if (FUNC3(data, 1, len, f) != len) {
		FUNC0(f);
		FUNC2(stderr,
			"ERROR: cannot write to file '%s'\n",
			name);
		return 0;
	}
	FUNC0(f);
	return 1;
}