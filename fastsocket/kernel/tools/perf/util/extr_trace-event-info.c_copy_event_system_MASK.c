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
struct dirent {scalar_t__ d_type; char const* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct tracepoint_path*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char const*,char const*) ; 
 int FUNC10 (char*,struct stat*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 scalar_t__ FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int*,int) ; 

__attribute__((used)) static void FUNC14(const char *sys, struct tracepoint_path *tps)
{
	struct dirent *dent;
	struct stat st;
	char *format;
	DIR *dir;
	int count = 0;
	int ret;

	dir = FUNC5(sys);
	if (!dir)
		FUNC1("can't read directory '%s'", sys);

	while ((dent = FUNC6(dir))) {
		if (dent->d_type != DT_DIR ||
		    FUNC11(dent->d_name, ".") == 0 ||
		    FUNC11(dent->d_name, "..") == 0 ||
		    !FUNC4(dent->d_name, tps))
			continue;
		format = FUNC3(FUNC12(sys) + FUNC12(dent->d_name) + 10);
		FUNC9(format, "%s/%s/format", sys, dent->d_name);
		ret = FUNC10(format, &st);
		FUNC2(format);
		if (ret < 0)
			continue;
		count++;
	}

	FUNC13(&count, 4);

	FUNC8(dir);
	while ((dent = FUNC6(dir))) {
		if (dent->d_type != DT_DIR ||
		    FUNC11(dent->d_name, ".") == 0 ||
		    FUNC11(dent->d_name, "..") == 0 ||
		    !FUNC4(dent->d_name, tps))
			continue;
		format = FUNC3(FUNC12(sys) + FUNC12(dent->d_name) + 10);
		FUNC9(format, "%s/%s/format", sys, dent->d_name);
		ret = FUNC10(format, &st);

		if (ret >= 0)
			FUNC7(format, 8);

		FUNC2(format);
	}
	FUNC0(dir);
}