#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  devname; } ;
typedef  TYPE_1__ devid_nmlist_t ;
typedef  int /*<<< orphan*/  ddi_devid_t ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ ,char*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC6(char *devid_str)
{
	ddi_devid_t devid;
	char *minor;
	char *path;
	devid_nmlist_t *list = NULL;
	int ret;

	if (FUNC3(devid_str, &devid, &minor) != 0)
		return (NULL);

	ret = FUNC0("/dev", devid, minor, &list);

	FUNC4(minor);
	FUNC1(devid);

	if (ret != 0)
		return (NULL);

	/*
	 * In a case the strdup() fails, we will just return NULL below.
	 */
	path = FUNC5(list[0].devname);

	FUNC2(list);

	return (path);
}