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
typedef  int /*<<< orphan*/  ddi_devid_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,char**) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC7(const char *path)
{
#ifdef have_devid
	int fd;
	ddi_devid_t devid;
	char *minor, *ret;

	if ((fd = open(path, O_RDONLY)) < 0)
		return (NULL);

	minor = NULL;
	ret = NULL;
	if (devid_get(fd, &devid) == 0) {
		if (devid_get_minor_name(fd, &minor) == 0)
			ret = devid_str_encode(devid, minor);
		if (minor != NULL)
			devid_str_free(minor);
		devid_free(devid);
	}
	(void) close(fd);

	return (ret);
#else
	return (NULL);
#endif
}