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
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int DW_TAG_array_type ; 
 int DW_TAG_enumeration_type ; 
 int DW_TAG_pointer_type ; 
 int DW_TAG_structure_type ; 
 int DW_TAG_subroutine_type ; 
 int DW_TAG_union_type ; 
 int E2BIG ; 
 int ENOENT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int,char*,...) ; 

int FUNC4(Dwarf_Die *vr_die, char *buf, int len)
{
	Dwarf_Die type;
	int tag, ret, ret2;
	const char *tmp = "";

	if (FUNC0(vr_die, &type) == NULL)
		return -ENOENT;

	tag = FUNC2(&type);
	if (tag == DW_TAG_array_type || tag == DW_TAG_pointer_type)
		tmp = "*";
	else if (tag == DW_TAG_subroutine_type) {
		/* Function pointer */
		ret = FUNC3(buf, len, "(function_type)");
		return (ret >= len) ? -E2BIG : ret;
	} else {
		if (!FUNC1(&type))
			return -ENOENT;
		if (tag == DW_TAG_union_type)
			tmp = "union ";
		else if (tag == DW_TAG_structure_type)
			tmp = "struct ";
		else if (tag == DW_TAG_enumeration_type)
			tmp = "enum ";
		/* Write a base name */
		ret = FUNC3(buf, len, "%s%s", tmp, FUNC1(&type));
		return (ret >= len) ? -E2BIG : ret;
	}
	ret = FUNC4(&type, buf, len);
	if (ret > 0) {
		ret2 = FUNC3(buf + ret, len - ret, "%s", tmp);
		ret = (ret2 >= len - ret) ? -E2BIG : ret2 + ret;
	}
	return ret;
}