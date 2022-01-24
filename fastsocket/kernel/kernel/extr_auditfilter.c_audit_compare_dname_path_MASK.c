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
 int AUDIT_NAME_FULL ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*,char const*,int) ; 

int FUNC3(const char *dname, const char *path, int parentlen)
{
	int dlen, pathlen;
	const char *p;

	dlen = FUNC1(dname);
	pathlen = FUNC1(path);
	if (pathlen < dlen)
		return 1;

	parentlen = parentlen == AUDIT_NAME_FULL ? FUNC0(path) : parentlen;
	if (pathlen - parentlen != dlen)
		return 1;

	p = path + parentlen;

	return FUNC2(p, dname, dlen);
}