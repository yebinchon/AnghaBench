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

/* Variables and functions */
 char* DEBUG_CACHE_DIR ; 
 int MAXPATHLEN ; 
 char* buildid_dir ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

void FUNC5(void)
{
	buildid_dir[0] = '\0';

	/* try config file */
	FUNC0();

	/* default to $HOME/.debug */
	if (buildid_dir[0] == '\0') {
		char *v = FUNC1("HOME");
		if (v) {
			FUNC3(buildid_dir, MAXPATHLEN-1, "%s/%s",
				 v, DEBUG_CACHE_DIR);
		} else {
			FUNC4(buildid_dir, DEBUG_CACHE_DIR, MAXPATHLEN-1);
		}
		buildid_dir[MAXPATHLEN-1] = '\0';
	}
	/* for communicating with external commands */
	FUNC2("PERF_BUILDID_DIR", buildid_dir, 1);
}