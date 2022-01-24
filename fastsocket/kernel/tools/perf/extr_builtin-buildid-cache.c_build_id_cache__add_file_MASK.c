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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  build_id ;

/* Variables and functions */
 int BUILD_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (char*,char const*,char const*,int,int) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*,char*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC5(const char *filename, const char *debugdir)
{
	char sbuild_id[BUILD_ID_SIZE * 2 + 1];
	u8 build_id[BUILD_ID_SIZE];
	int err;

	if (FUNC2(filename, &build_id, sizeof(build_id)) < 0) {
		FUNC3("Couldn't read a build-id in %s\n", filename);
		return -1;
	}

	FUNC0(build_id, sizeof(build_id), sbuild_id);
	err = FUNC1(sbuild_id, debugdir, filename,
				    false, false);
	if (verbose)
		FUNC4("Adding %s %s: %s\n", sbuild_id, filename,
			err ? "FAIL" : "Ok");
	return err;
}