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
struct nameidata {struct path path; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,unsigned int,struct nameidata*) ; 

int FUNC1(const char *name, unsigned int flags, struct path *path)
{
	struct nameidata nd;
	int res = FUNC0(AT_FDCWD, name, flags, &nd);
	if (!res)
		*path = nd.path;
	return res;
}