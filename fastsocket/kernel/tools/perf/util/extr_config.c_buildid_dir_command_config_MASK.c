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
struct buildid_dir_config {char* dir; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
 char* FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC4(const char *var, const char *value,
				      void *data)
{
	struct buildid_dir_config *c = data;
	const char *v;

	/* same dir for all commands */
	if (!FUNC1(var, "buildid.") && !FUNC2(var + 8, "dir")) {
		v = FUNC0(var, value);
		if (!v)
			return -1;
		FUNC3(c->dir, v, MAXPATHLEN-1);
		c->dir[MAXPATHLEN-1] = '\0';
	}
	return 0;
}