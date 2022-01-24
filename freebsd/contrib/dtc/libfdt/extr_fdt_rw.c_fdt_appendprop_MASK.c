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
struct fdt_property {scalar_t__ data; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (void*,int,char const*,int,struct fdt_property**) ; 
 int FUNC3 (void*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct fdt_property* FUNC5 (void*,int,char const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,void const*,int) ; 

int FUNC7(void *fdt, int nodeoffset, const char *name,
		   const void *val, int len)
{
	struct fdt_property *prop;
	int err, oldlen, newlen;

	FUNC0(fdt);

	prop = FUNC5(fdt, nodeoffset, name, &oldlen);
	if (prop) {
		newlen = len + oldlen;
		err = FUNC3(fdt, prop->data,
					 FUNC1(oldlen),
					 FUNC1(newlen));
		if (err)
			return err;
		prop->len = FUNC4(newlen);
		FUNC6(prop->data + oldlen, val, len);
	} else {
		err = FUNC2(fdt, nodeoffset, name, len, &prop);
		if (err)
			return err;
		FUNC6(prop->data, val, len);
	}
	return 0;
}