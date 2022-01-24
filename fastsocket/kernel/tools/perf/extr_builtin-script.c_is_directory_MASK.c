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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,char*) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 

__attribute__((used)) static int FUNC3(const char *base_path, const struct dirent *dent)
{
	char path[PATH_MAX];
	struct stat st;

	FUNC1(path, "%s/%s", base_path, dent->d_name);
	if (FUNC2(path, &st))
		return 0;

	return FUNC0(st.st_mode);
}