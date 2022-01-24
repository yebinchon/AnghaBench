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
struct stat {scalar_t__ st_uid; int /*<<< orphan*/  st_size; } ;
typedef  int /*<<< orphan*/  config_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* config_exclusive_filename ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,void*) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 char* FUNC8 () ; 
 scalar_t__ FUNC9 (char*,struct stat*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 

int FUNC12(config_fn_t fn, void *data)
{
	int ret = 0, found = 0;
	const char *home = NULL;

	/* Setting $PERF_CONFIG makes perf read _only_ the given config file. */
	if (config_exclusive_filename)
		return FUNC5(fn, config_exclusive_filename, data);
	if (FUNC7() && !FUNC0(FUNC8(), R_OK)) {
		ret += FUNC5(fn, FUNC8(),
					    data);
		found += 1;
	}

	home = FUNC2("HOME");
	if (FUNC6() && home) {
		char *user_config = FUNC10(FUNC4("%s/.perfconfig", home));
		struct stat st;

		if (user_config == NULL) {
			FUNC11("Not enough memory to process %s/.perfconfig, "
				"ignoring it.", home);
			goto out;
		}

		if (FUNC9(user_config, &st) < 0)
			goto out_free;

		if (st.st_uid && (st.st_uid != FUNC3())) {
			FUNC11("File %s not owned by current user or root, "
				"ignoring it.", user_config);
			goto out_free;
		}

		if (!st.st_size)
			goto out_free;

		ret += FUNC5(fn, user_config, data);
		found += 1;
out_free:
		FUNC1(user_config);
	}
out:
	if (found == 0)
		return -1;
	return ret;
}