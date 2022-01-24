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
struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 scalar_t__ DT_LNK ; 
 int PATH_MAX ; 
 char* PATH_SYS_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int* cpunode_map ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*) ; 
 int FUNC5 (char*,char*,unsigned int*) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct dirent *dent1, *dent2;
	DIR *dir1, *dir2;
	unsigned int cpu, mem;
	char buf[PATH_MAX];

	if (FUNC1())
		return -1;

	dir1 = FUNC2(PATH_SYS_NODE);
	if (!dir1)
		return 0;

	while ((dent1 = FUNC3(dir1)) != NULL) {
		if (dent1->d_type != DT_DIR ||
		    FUNC5(dent1->d_name, "node%u", &mem) < 1)
			continue;

		FUNC4(buf, PATH_MAX, "%s/%s", PATH_SYS_NODE, dent1->d_name);
		dir2 = FUNC2(buf);
		if (!dir2)
			continue;
		while ((dent2 = FUNC3(dir2)) != NULL) {
			if (dent2->d_type != DT_LNK ||
			    FUNC5(dent2->d_name, "cpu%u", &cpu) < 1)
				continue;
			cpunode_map[cpu] = mem;
		}
		FUNC0(dir2);
	}
	FUNC0(dir1);
	return 0;
}