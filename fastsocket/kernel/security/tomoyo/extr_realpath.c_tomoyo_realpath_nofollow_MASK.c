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
struct path {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC1 (struct path*) ; 
 char* FUNC2 (struct path*) ; 

char *FUNC3(const char *pathname)
{
	struct path path;

	if (pathname && FUNC0(pathname, 0, &path) == 0) {
		char *buf = FUNC2(&path);
		FUNC1(&path);
		return buf;
	}
	return NULL;
}