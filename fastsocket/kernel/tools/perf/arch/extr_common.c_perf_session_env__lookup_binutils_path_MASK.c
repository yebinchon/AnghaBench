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
struct utsname {int /*<<< orphan*/  machine; } ;
struct perf_session_env {int /*<<< orphan*/  arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char** arm_triplets ; 
 scalar_t__ FUNC1 (char**,char*,char const* const,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int FUNC5 (char const* const*,char const*) ; 
 char** mips_triplets ; 
 char const* FUNC6 (int /*<<< orphan*/ ) ; 
 char** powerpc_triplets ; 
 char** s390_triplets ; 
 char** sh_triplets ; 
 char** sparc_triplets ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 scalar_t__ FUNC9 (struct utsname*) ; 
 char** x86_triplets ; 

__attribute__((used)) static int FUNC10(struct perf_session_env *env,
						  const char *name,
						  const char **path)
{
	int idx;
	const char *arch, *cross_env;
	struct utsname uts;
	const char *const *path_list;
	char *buf = NULL;

	arch = FUNC6(env->arch);

	if (FUNC9(&uts) < 0)
		goto out;

	/*
	 * We don't need to try to find objdump path for native system.
	 * Just use default binutils path (e.g.: "objdump").
	 */
	if (!FUNC7(FUNC6(uts.machine), arch))
		goto out;

	cross_env = FUNC3("CROSS_COMPILE");
	if (cross_env) {
		if (FUNC1(&buf, "%s%s", cross_env, name) < 0)
			goto out_error;
		if (buf[0] == '/') {
			if (FUNC0(buf, F_OK) == 0)
				goto out;
			goto out_error;
		}
		if (FUNC4(buf))
			goto out;
		FUNC2(buf);
	}

	if (!FUNC7(arch, "arm"))
		path_list = arm_triplets;
	else if (!FUNC7(arch, "powerpc"))
		path_list = powerpc_triplets;
	else if (!FUNC7(arch, "sh"))
		path_list = sh_triplets;
	else if (!FUNC7(arch, "s390"))
		path_list = s390_triplets;
	else if (!FUNC7(arch, "sparc"))
		path_list = sparc_triplets;
	else if (!FUNC7(arch, "x86"))
		path_list = x86_triplets;
	else if (!FUNC7(arch, "mips"))
		path_list = mips_triplets;
	else {
		FUNC8("binutils for %s not supported.\n", arch);
		goto out_error;
	}

	idx = FUNC5(path_list, name);
	if (idx < 0) {
		FUNC8("Please install %s for %s.\n"
			  "You can add it to PATH, set CROSS_COMPILE or "
			  "override the default using --%s.\n",
			  name, arch, name);
		goto out_error;
	}

	if (FUNC1(&buf, "%s%s", path_list[idx], name) < 0)
		goto out_error;

out:
	*path = buf;
	return 0;
out_error:
	FUNC2(buf);
	*path = NULL;
	return -1;
}