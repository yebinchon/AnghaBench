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
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int FDT_ERR_BADPATH ; 
 int FUNC1 (void const*,int,char const*,int) ; 
 char* FUNC2 (char const*,char) ; 
 int FUNC3 (char const*) ; 

int FUNC4(const void *fdt, const char *path)
{
	const char *end = path + FUNC3(path);
	const char *p = path;
	int offset = 0;

	FUNC0(fdt);

	if (*path != '/')
		return -FDT_ERR_BADPATH;

	while (*p) {
		const char *q;

		while (*p == '/')
			p++;
		if (! *p)
			return offset;
		q = FUNC2(p, '/');
		if (! q)
			q = end;

		offset = FUNC1(fdt, offset, p, q-p);
		if (offset < 0)
			return offset;

		p = q;
	}

	return offset;
}