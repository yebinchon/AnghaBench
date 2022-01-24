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
struct test__event_st {char* name; int /*<<< orphan*/  check; } ;
struct stat {int dummy; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int MAX_NAME ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  test__checkevent_pmu_events ; 
 int FUNC8 (struct test__event_st*) ; 

__attribute__((used)) static int FUNC9(void)
{
	struct stat st;
	char path[PATH_MAX];
	struct dirent *ent;
	DIR *dir;
	int ret;

	FUNC4(path, PATH_MAX, "%s/bus/event_source/devices/cpu/events/",
		 FUNC7());

	ret = FUNC5(path, &st);
	if (ret) {
		FUNC2("ommiting PMU cpu events tests\n");
		return 0;
	}

	dir = FUNC1(path);
	if (!dir) {
		FUNC2("can't open pmu event dir");
		return -1;
	}

	while (!ret && (ent = FUNC3(dir))) {
#define MAX_NAME 100
		struct test__event_st e;
		char name[MAX_NAME];

		if (!FUNC6(ent->d_name, ".") ||
		    !FUNC6(ent->d_name, ".."))
			continue;

		FUNC4(name, MAX_NAME, "cpu/event=%s/u", ent->d_name);

		e.name  = name;
		e.check = test__checkevent_pmu_events;

		ret = FUNC8(&e);
#undef MAX_NAME
	}

	FUNC0(dir);
	return ret;
}