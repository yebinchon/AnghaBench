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
 int FDT_ERR_BADOFFSET ; 
 int FDT_ERR_BADSTRUCTURE ; 
 int FDT_ERR_NOSPACE ; 
 int FDT_ERR_NOTFOUND ; 
 char* FUNC1 (void const*,int,int*) ; 
 int FUNC2 (void const*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

int FUNC4(const void *fdt, int nodeoffset, char *buf, int buflen)
{
	int pdepth = 0, p = 0;
	int offset, depth, namelen;
	const char *name;

	FUNC0(fdt);

	if (buflen < 2)
		return -FDT_ERR_NOSPACE;

	for (offset = 0, depth = 0;
	     (offset >= 0) && (offset <= nodeoffset);
	     offset = FUNC2(fdt, offset, &depth)) {
		if (pdepth < depth)
			continue; /* overflowed buffer */

		while (pdepth > depth) {
			do {
				p--;
			} while (buf[p-1] != '/');
			pdepth--;
		}

		name = FUNC1(fdt, offset, &namelen);
		if (!name)
			return namelen;
		if ((p + namelen + 1) <= buflen) {
			FUNC3(buf + p, name, namelen);
			p += namelen;
			buf[p++] = '/';
			pdepth++;
		}

		if (offset == nodeoffset) {
			if (pdepth < (depth + 1))
				return -FDT_ERR_NOSPACE;

			if (p > 1) /* special case so that root path is "/", not "" */
				p--;
			buf[p] = '\0';
			return p;
		}
	}

	if ((offset == -FDT_ERR_NOTFOUND) || (offset >= 0))
		return -FDT_ERR_BADOFFSET;
	else if (offset == -FDT_ERR_BADOFFSET)
		return -FDT_ERR_BADSTRUCTURE;

	return offset; /* error from fdt_next_node() */
}