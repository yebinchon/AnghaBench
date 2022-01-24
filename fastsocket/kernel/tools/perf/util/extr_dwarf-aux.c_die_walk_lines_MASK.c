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
struct __line_walk_param {int (* callback ) (char const*,int,int /*<<< orphan*/ ,void*) ;void* data; int retval; } ;
typedef  int (* line_walk_callback_t ) (char const*,int,int /*<<< orphan*/ ,void*) ;
typedef  int /*<<< orphan*/  Dwarf_Lines ;
typedef  int /*<<< orphan*/  Dwarf_Line ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Addr ;

/* Variables and functions */
 scalar_t__ DW_TAG_compile_unit ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  __die_walk_culines_cb ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int (*) (char const*,int,int /*<<< orphan*/ ,void*),void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct __line_walk_param*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

int FUNC12(Dwarf_Die *rt_die, line_walk_callback_t callback, void *data)
{
	Dwarf_Lines *lines;
	Dwarf_Line *line;
	Dwarf_Addr addr;
	const char *fname;
	int lineno, ret = 0;
	Dwarf_Die die_mem, *cu_die;
	size_t nlines, i;

	/* Get the CU die */
	if (FUNC10(rt_die) != DW_TAG_compile_unit)
		cu_die = FUNC2(rt_die, &die_mem, NULL, NULL);
	else
		cu_die = rt_die;
	if (!cu_die) {
		FUNC11("Failed to get CU from given DIE.\n");
		return -EINVAL;
	}

	/* Get lines list in the CU */
	if (FUNC4(cu_die, &lines, &nlines) != 0) {
		FUNC11("Failed to get source lines on this CU.\n");
		return -ENOENT;
	}
	FUNC11("Get %zd lines from this CU\n", nlines);

	/* Walk on the lines on lines list */
	for (i = 0; i < nlines; i++) {
		line = FUNC9(lines, i);
		if (line == NULL ||
		    FUNC7(line, &lineno) != 0 ||
		    FUNC6(line, &addr) != 0) {
			FUNC11("Failed to get line info. "
				  "Possible error in debuginfo.\n");
			continue;
		}
		/* Filter lines based on address */
		if (rt_die != cu_die)
			/*
			 * Address filtering
			 * The line is included in given function, and
			 * no inline block includes it.
			 */
			if (!FUNC5(rt_die, addr) ||
			    FUNC1(rt_die, addr, &die_mem))
				continue;
		/* Get source line */
		fname = FUNC8(line, NULL, NULL);

		ret = callback(fname, lineno, addr, data);
		if (ret != 0)
			return ret;
	}

	/*
	 * Dwarf lines doesn't include function declarations and inlined
	 * subroutines. We have to check functions list or given function.
	 */
	if (rt_die != cu_die)
		/*
		 * Don't need walk functions recursively, because nested
		 * inlined functions don't have lines of the specified DIE.
		 */
		ret = FUNC0(rt_die, false, callback, data);
	else {
		struct __line_walk_param param = {
			.callback = callback,
			.data = data,
			.retval = 0,
		};
		FUNC3(cu_die, __die_walk_culines_cb, &param, 0);
		ret = param.retval;
	}

	return ret;
}