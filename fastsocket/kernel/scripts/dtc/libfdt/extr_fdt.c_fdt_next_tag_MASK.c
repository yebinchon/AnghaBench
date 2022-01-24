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
typedef  int uint32_t ;

/* Variables and functions */
#define  FDT_BEGIN_NODE 129 
 int FDT_END ; 
#define  FDT_PROP 128 
 int FUNC0 (int) ; 
 int FDT_TAGSIZE ; 
 int FUNC1 (int const) ; 
 void* FUNC2 (void const*,int,int) ; 

uint32_t FUNC3(const void *fdt, int offset, int *nextoffset)
{
	const uint32_t *tagp, *lenp;
	uint32_t tag;
	const char *p;

	if (offset % FDT_TAGSIZE)
		return -1;

	tagp = FUNC2(fdt, offset, FDT_TAGSIZE);
	if (! tagp)
		return FDT_END; /* premature end */
	tag = FUNC1(*tagp);
	offset += FDT_TAGSIZE;

	switch (tag) {
	case FDT_BEGIN_NODE:
		/* skip name */
		do {
			p = FUNC2(fdt, offset++, 1);
		} while (p && (*p != '\0'));
		if (! p)
			return FDT_END;
		break;
	case FDT_PROP:
		lenp = FUNC2(fdt, offset, sizeof(*lenp));
		if (! lenp)
			return FDT_END;
		/* skip name offset, length and value */
		offset += 2*FDT_TAGSIZE + FUNC1(*lenp);
		break;
	}

	if (nextoffset)
		*nextoffset = FUNC0(offset);

	return tag;
}