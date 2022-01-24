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
struct nameidata {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int ENOMEM ; 
 char* FUNC2 (int) ; 
 scalar_t__ PATH_MAX ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct nameidata*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct dentry*,char*,scalar_t__) ; 

__attribute__((used)) static void *FUNC8(struct dentry *dentry, struct nameidata *nd)
{
	char *link = FUNC3();
	FUNC0("followlink of %s/%s\n", FUNC1(dentry));

	if (!link) {
		link = FUNC2(-ENOMEM);
	} else {
		int len = FUNC7(FUNC6(dentry),
						dentry, link, PATH_MAX - 1);
		if (len < 0) {
			FUNC4(link);
			link = FUNC2(len);
		} else {
			link[len] = 0;
		}
	}
	FUNC5(nd, link);
	return NULL;
}