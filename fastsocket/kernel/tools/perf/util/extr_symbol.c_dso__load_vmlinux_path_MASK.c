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
typedef  int /*<<< orphan*/  symbol_filter_t ;
struct map {int dummy; } ;
struct dso {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct dso*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dso*,struct map*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dso*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char** vmlinux_path ; 
 int vmlinux_path__nr_entries ; 

int FUNC6(struct dso *dso, struct map *map,
			   symbol_filter_t filter)
{
	int i, err = 0;
	char *filename;

	FUNC4("Looking at the vmlinux_path (%d entries long)\n",
		 vmlinux_path__nr_entries + 1);

	filename = FUNC0(dso, NULL, 0);
	if (filename != NULL) {
		err = FUNC1(dso, map, filename, filter);
		if (err > 0)
			goto out;
		FUNC3(filename);
	}

	for (i = 0; i < vmlinux_path__nr_entries; ++i) {
		err = FUNC1(dso, map, vmlinux_path[i], filter);
		if (err > 0) {
			FUNC2(dso, FUNC5(vmlinux_path[i]));
			break;
		}
	}
out:
	return err;
}