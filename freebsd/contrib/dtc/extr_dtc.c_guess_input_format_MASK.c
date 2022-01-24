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
typedef  scalar_t__ uint32_t ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FDT_MAGIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int FUNC5 (scalar_t__*,int,int,int /*<<< orphan*/ *) ; 
 char const* FUNC6 (char const*,char const*) ; 
 scalar_t__ FUNC7 (char const*,struct stat*) ; 

__attribute__((used)) static const char *FUNC8(const char *fname, const char *fallback)
{
	struct stat statbuf;
	uint32_t magic;
	FILE *f;

	if (FUNC7(fname, &statbuf) != 0)
		return fallback;

	if (FUNC0(statbuf.st_mode))
		return "fs";

	if (!FUNC1(statbuf.st_mode))
		return fallback;

	f = FUNC4(fname, "r");
	if (f == NULL)
		return fallback;
	if (FUNC5(&magic, 4, 1, f) != 1) {
		FUNC2(f);
		return fallback;
	}
	FUNC2(f);

	magic = FUNC3(magic);
	if (magic == FDT_MAGIC)
		return "dtb";

	return FUNC6(fname, fallback);
}