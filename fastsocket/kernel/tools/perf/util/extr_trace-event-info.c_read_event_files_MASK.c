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
struct tracepoint_path {int dummy; } ;
struct stat {int dummy; } ;
struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct tracepoint_path*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,char*) ; 
 int FUNC11 (char*,struct stat*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct tracepoint_path*) ; 
 int /*<<< orphan*/  FUNC15 (int*,int) ; 

__attribute__((used)) static void FUNC16(struct tracepoint_path *tps)
{
	struct dirent *dent;
	struct stat st;
	char *path;
	char *sys;
	DIR *dir;
	int count = 0;
	int ret;

	path = FUNC4("events");

	dir = FUNC6(path);
	if (!dir)
		FUNC2("can't read directory '%s'", path);

	while ((dent = FUNC8(dir))) {
		if (dent->d_type != DT_DIR ||
		    FUNC12(dent->d_name, ".") == 0 ||
		    FUNC12(dent->d_name, "..") == 0 ||
		    FUNC12(dent->d_name, "ftrace") == 0 ||
		    !FUNC14(dent->d_name, tps))
			continue;
		count++;
	}

	FUNC15(&count, 4);

	FUNC9(dir);
	while ((dent = FUNC8(dir))) {
		if (dent->d_type != DT_DIR ||
		    FUNC12(dent->d_name, ".") == 0 ||
		    FUNC12(dent->d_name, "..") == 0 ||
		    FUNC12(dent->d_name, "ftrace") == 0 ||
		    !FUNC14(dent->d_name, tps))
			continue;
		sys = FUNC5(FUNC13(path) + FUNC13(dent->d_name) + 2);
		FUNC10(sys, "%s/%s", path, dent->d_name);
		ret = FUNC11(sys, &st);
		if (ret >= 0) {
			FUNC15(dent->d_name, FUNC13(dent->d_name) + 1);
			FUNC1(sys, tps);
		}
		FUNC3(sys);
	}

	FUNC0(dir);
	FUNC7(path);
}