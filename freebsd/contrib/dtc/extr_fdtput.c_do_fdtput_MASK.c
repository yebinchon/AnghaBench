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
struct display_info {int oper; int /*<<< orphan*/  auto_path; } ;

/* Variables and functions */
#define  OPER_CREATE_NODE 131 
#define  OPER_DELETE_PROP 130 
#define  OPER_REMOVE_NODE 129 
#define  OPER_WRITE_PROP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char**,char*) ; 
 int FUNC2 (char**,char*) ; 
 int FUNC3 (char*,char*) ; 
 int FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct display_info*,char**,int,char**,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char**,char*,char*,char*,int) ; 
 char* FUNC9 (char const*) ; 
 int FUNC10 (char const*,char*) ; 

__attribute__((used)) static int FUNC11(struct display_info *disp, const char *filename,
		    char **arg, int arg_count)
{
	char *value = NULL;
	char *blob;
	char *node;
	int len, ret = 0;

	blob = FUNC9(filename);
	if (!blob)
		return -1;

	switch (disp->oper) {
	case OPER_WRITE_PROP:
		/*
		 * Convert the arguments into a single binary value, then
		 * store them into the property.
		 */
		FUNC0(arg_count >= 2);
		if (disp->auto_path && FUNC2(&blob, *arg))
			return -1;
		if (FUNC5(disp, arg + 2, arg_count - 2, &value, &len) ||
			FUNC8(&blob, *arg, arg[1], value, len))
			ret = -1;
		break;
	case OPER_CREATE_NODE:
		for (; ret >= 0 && arg_count--; arg++) {
			if (disp->auto_path)
				ret = FUNC2(&blob, *arg);
			else
				ret = FUNC1(&blob, *arg);
		}
		break;
	case OPER_REMOVE_NODE:
		for (; ret >= 0 && arg_count--; arg++)
			ret = FUNC3(blob, *arg);
		break;
	case OPER_DELETE_PROP:
		node = *arg;
		for (arg++; ret >= 0 && arg_count-- > 1; arg++)
			ret = FUNC4(blob, node, *arg);
		break;
	}
	if (ret >= 0) {
		FUNC6(blob);
		ret = FUNC10(filename, blob);
	}

	FUNC7(blob);

	if (value) {
		FUNC7(value);
	}

	return ret;
}