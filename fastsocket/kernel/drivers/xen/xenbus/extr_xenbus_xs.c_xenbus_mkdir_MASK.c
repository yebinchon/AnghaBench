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
struct xenbus_transaction {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  XS_MKDIR ; 
 char* FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

int FUNC6(struct xenbus_transaction t,
		 const char *dir, const char *node)
{
	char *path;
	int ret;

	path = FUNC2(dir, node);
	if (FUNC0(path))
		return FUNC1(path);

	ret = FUNC4(FUNC5(t, XS_MKDIR, path, NULL));
	FUNC3(path);
	return ret;
}