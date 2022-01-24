#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nameidata {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ PATH_MAX ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 size_t FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct nameidata*,char*) ; 
 int FUNC6 (struct dentry*,char*,scalar_t__) ; 

__attribute__((used)) static void *FUNC7(struct dentry *dentry, struct nameidata *nd)
{
	int len = 0;
	char *link = FUNC2();

	FUNC1(P9_DEBUG_VFS, "%s n", dentry->d_name.name);

	if (!link)
		link = FUNC0(-ENOMEM);
	else {
		len = FUNC6(dentry, link, PATH_MAX);

		if (len < 0) {
			FUNC3(link);
			link = FUNC0(len);
		} else
			link[FUNC4(len, PATH_MAX-1)] = 0;
	}
	FUNC5(nd, link);

	return NULL;
}