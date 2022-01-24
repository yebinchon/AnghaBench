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
 int FDT_ERR_BADVALUE ; 
 int FDT_ERR_NOTFOUND ; 
 char* FUNC0 (void const*,int,char const*,int*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*,int) ; 

int FUNC4(const void *fdt, int nodeoffset, const char *property,
			  const char *string)
{
	int length, len, idx = 0;
	const char *list, *end;

	list = FUNC0(fdt, nodeoffset, property, &length);
	if (!list)
		return length;

	len = FUNC2(string) + 1;
	end = list + length;

	while (list < end) {
		length = FUNC3(list, end - list) + 1;

		/* Abort if the last string isn't properly NUL-terminated. */
		if (list + length > end)
			return -FDT_ERR_BADVALUE;

		if (length == len && FUNC1(list, string, length) == 0)
			return idx;

		list += length;
		idx++;
	}

	return -FDT_ERR_NOTFOUND;
}