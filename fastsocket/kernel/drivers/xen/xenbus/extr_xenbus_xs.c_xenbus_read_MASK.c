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
 int /*<<< orphan*/  XS_READ ; 
 char* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (struct xenbus_transaction,int /*<<< orphan*/ ,char*,unsigned int*) ; 

void *FUNC4(struct xenbus_transaction t,
		  const char *dir, const char *node, unsigned int *len)
{
	char *path;
	void *ret;

	path = FUNC1(dir, node);
	if (FUNC0(path))
		return (void *)path;

	ret = FUNC3(t, XS_READ, path, len);
	FUNC2(path);
	return ret;
}