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
struct hyp_sysfs_attr {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  XENVER_extraversion ; 
 int /*<<< orphan*/  XEN_EXTRAVERSION_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct hyp_sysfs_attr *attr, char *buffer)
{
	int ret = -ENOMEM;
	char *extra;

	extra = FUNC2(XEN_EXTRAVERSION_LEN, GFP_KERNEL);
	if (extra) {
		ret = FUNC0(XENVER_extraversion, extra);
		if (!ret)
			ret = FUNC3(buffer, "%s\n", extra);
		FUNC1(extra);
	}

	return ret;
}