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
 int /*<<< orphan*/  _PATH_VARRUN ; 
 int FUNC0 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC1 () ; 

__attribute__((used)) static char *
FUNC2(const char *bname)
{
	char *path;

	if (bname == NULL)
		bname = FUNC1();

	/* _PATH_VARRUN includes trailing / */
	if (FUNC0(&path, "%d%s.pid", _PATH_VARRUN, bname) == -1)
		return NULL;
	return path;
}