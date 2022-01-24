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
struct TYPE_2__ {scalar_t__ kptr_restrict; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 size_t PATH_MAX ; 
 char* VDSO__MAP_NAME ; 
 int /*<<< orphan*/  X_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,size_t const,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t const,char*,char const*) ; 
 int FUNC10 (char const*) ; 
 TYPE_1__ symbol_conf ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 char* FUNC12 (size_t const) ; 

int FUNC13(const char *sbuild_id, const char *debugdir,
			  const char *name, bool is_kallsyms, bool is_vdso)
{
	const size_t size = PATH_MAX;
	char *realname, *filename = FUNC12(size),
	     *linkname = FUNC12(size), *targetname;
	int len, err = -1;
	bool slash = is_kallsyms || is_vdso;

	if (is_kallsyms) {
		if (symbol_conf.kptr_restrict) {
			FUNC6("Not caching a kptr_restrict'ed /proc/kallsyms\n");
			return 0;
		}
		realname = (char *) name;
	} else
		realname = FUNC7(name, NULL);

	if (realname == NULL || filename == NULL || linkname == NULL)
		goto out_free;

	len = FUNC8(filename, size, "%s%s%s",
		       debugdir, slash ? "/" : "",
		       is_vdso ? VDSO__MAP_NAME : realname);
	if (FUNC5(filename, 0755))
		goto out_free;

	FUNC9(filename + len, size - len, "/%s", sbuild_id);

	if (FUNC0(filename, F_OK)) {
		if (is_kallsyms) {
			 if (FUNC1("/proc/kallsyms", filename))
				goto out_free;
		} else if (FUNC3(realname, filename) && FUNC1(name, filename))
			goto out_free;
	}

	len = FUNC8(linkname, size, "%s/.build-id/%.2s",
		       debugdir, sbuild_id);

	if (FUNC0(linkname, X_OK) && FUNC5(linkname, 0755))
		goto out_free;

	FUNC9(linkname + len, size - len, "/%s", sbuild_id + 2);
	targetname = filename + FUNC10(debugdir) - 5;
	FUNC4(targetname, "../..", 5);

	if (FUNC11(targetname, linkname) == 0)
		err = 0;
out_free:
	if (!is_kallsyms)
		FUNC2(realname);
	FUNC2(filename);
	FUNC2(linkname);
	return err;
}