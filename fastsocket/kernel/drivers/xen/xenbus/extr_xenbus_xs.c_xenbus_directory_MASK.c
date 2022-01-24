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
 int /*<<< orphan*/  XS_DIRECTORY ; 
 char* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char** FUNC3 (char*,unsigned int,unsigned int*) ; 
 char* FUNC4 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,unsigned int*) ; 

char **FUNC5(struct xenbus_transaction t,
			const char *dir, const char *node, unsigned int *num)
{
	char *strings, *path;
	unsigned int len;

	path = FUNC1(dir, node);
	if (FUNC0(path))
		return (char **)path;

	strings = FUNC4(t, XS_DIRECTORY, path, &len);
	FUNC2(path);
	if (FUNC0(strings))
		return (char **)strings;

	return FUNC3(strings, len, num);
}