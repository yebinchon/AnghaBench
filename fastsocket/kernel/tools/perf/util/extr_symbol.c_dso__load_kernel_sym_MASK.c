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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  symbol_filter_t ;
struct map {int dummy; } ;
struct dso {int /*<<< orphan*/  build_id; scalar_t__ has_build_id; } ;
typedef  int /*<<< orphan*/  kallsyms_build_id ;
struct TYPE_2__ {char* kallsyms_name; char* vmlinux_name; scalar_t__* symfs; } ;

/* Variables and functions */
 int BUILD_ID_SIZE ; 
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC3 (struct dso*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct dso*,char const*,struct map*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dso*,struct map*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dso*,struct map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dso*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct map*) ; 
 int /*<<< orphan*/  FUNC11 (struct map*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 TYPE_1__ symbol_conf ; 
 scalar_t__ FUNC15 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * vmlinux_path ; 

__attribute__((used)) static int FUNC16(struct dso *dso, struct map *map,
				symbol_filter_t filter)
{
	int err;
	const char *kallsyms_filename = NULL;
	char *kallsyms_allocated_filename = NULL;
	/*
	 * Step 1: if the user specified a kallsyms or vmlinux filename, use
	 * it and only it, reporting errors to the user if it cannot be used.
	 *
	 * For instance, try to analyse an ARM perf.data file _without_ a
	 * build-id, or if the user specifies the wrong path to the right
	 * vmlinux file, obviously we can't fallback to another vmlinux (a
	 * x86_86 one, on the machine where analysis is being performed, say),
	 * or worse, /proc/kallsyms.
	 *
	 * If the specified file _has_ a build-id and there is a build-id
	 * section in the perf.data file, we will still do the expected
	 * validation in dso__load_vmlinux and will bail out if they don't
	 * match.
	 */
	if (symbol_conf.kallsyms_name != NULL) {
		kallsyms_filename = symbol_conf.kallsyms_name;
		goto do_kallsyms;
	}

	if (symbol_conf.vmlinux_name != NULL) {
		err = FUNC5(dso, map,
					symbol_conf.vmlinux_name, filter);
		if (err > 0) {
			FUNC7(dso,
					   FUNC14(symbol_conf.vmlinux_name));
			goto out_fixup;
		}
		return err;
	}

	if (vmlinux_path != NULL) {
		err = FUNC6(dso, map, filter);
		if (err > 0)
			goto out_fixup;
	}

	/* do not try local files if a symfs was given */
	if (symbol_conf.symfs[0] != 0)
		return -1;

	/*
	 * Say the kernel DSO was created when processing the build-id header table,
	 * we have a build-id, so check if it is the same as the running kernel,
	 * using it if it is.
	 */
	if (dso->has_build_id) {
		u8 kallsyms_build_id[BUILD_ID_SIZE];
		char sbuild_id[BUILD_ID_SIZE * 2 + 1];

		if (FUNC15("/sys/kernel/notes", kallsyms_build_id,
					 sizeof(kallsyms_build_id)) == 0) {
			if (FUNC3(dso, kallsyms_build_id)) {
				kallsyms_filename = "/proc/kallsyms";
				goto do_kallsyms;
			}
		}
		/*
		 * Now look if we have it on the build-id cache in
		 * $HOME/.debug/[kernel.kallsyms].
		 */
		FUNC2(dso->build_id, sizeof(dso->build_id),
				  sbuild_id);

		if (FUNC1(&kallsyms_allocated_filename,
			     "%d/.debug/[kernel.kallsyms]/%s",
			     FUNC9("HOME"), sbuild_id) == -1) {
			FUNC13("Not enough memory for kallsyms file lookup\n");
			return -1;
		}

		kallsyms_filename = kallsyms_allocated_filename;

		if (FUNC0(kallsyms_filename, F_OK)) {
			FUNC13("No kallsyms or vmlinux with build-id %s "
			       "was found\n", sbuild_id);
			FUNC8(kallsyms_allocated_filename);
			return -1;
		}
	} else {
		/*
		 * Last resort, if we don't have a build-id and couldn't find
		 * any vmlinux file, try the running kernel kallsyms table.
		 */
		kallsyms_filename = "/proc/kallsyms";
	}

do_kallsyms:
	err = FUNC4(dso, kallsyms_filename, map, filter);
	if (err > 0)
		FUNC12("Using %s for symbols\n", kallsyms_filename);
	FUNC8(kallsyms_allocated_filename);

	if (err > 0) {
		FUNC7(dso, FUNC14("[kernel.kallsyms]"));
out_fixup:
		FUNC11(map);
		FUNC10(map);
	}

	return err;
}