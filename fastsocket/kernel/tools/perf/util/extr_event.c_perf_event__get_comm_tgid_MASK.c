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
typedef  int pid_t ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  bf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int PATH_MAX ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static pid_t FUNC11(pid_t pid, char *comm, size_t len)
{
	char filename[PATH_MAX];
	char bf[BUFSIZ];
	FILE *fp;
	size_t size = 0;
	pid_t tgid = -1;

	FUNC9(filename, sizeof(filename), "/proc/%d/status", pid);

	fp = FUNC3(filename, "r");
	if (fp == NULL) {
		FUNC7("couldn't open %s\n", filename);
		return 0;
	}

	while (!comm[0] || (tgid < 0)) {
		if (FUNC2(bf, sizeof(bf), fp) == NULL) {
			FUNC8("couldn't get COMM and pgid, malformed %s\n",
				   filename);
			break;
		}

		if (FUNC5(bf, "Name:", 5) == 0) {
			char *name = bf + 5;
			while (*name && FUNC4(*name))
				++name;
			size = FUNC10(name) - 1;
			if (size >= len)
				size = len - 1;
			FUNC6(comm, name, size);
			comm[size] = '\0';

		} else if (FUNC5(bf, "Tgid:", 5) == 0) {
			char *tgids = bf + 5;
			while (*tgids && FUNC4(*tgids))
				++tgids;
			tgid = FUNC0(tgids);
		}
	}

	FUNC1(fp);

	return tgid;
}