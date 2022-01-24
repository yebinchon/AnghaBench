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
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MOUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 (char const*,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,char) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(const char *dev_name,
				     char **hostname, size_t maxnamlen,
				     char **export_path, size_t maxpathlen)
{
	size_t len;
	char *colon, *comma;

	colon = FUNC2(dev_name, ':');
	if (colon == NULL)
		goto out_bad_devname;

	len = colon - dev_name;
	if (len > maxnamlen)
		goto out_hostname;

	/* N.B. caller will free nfs_server.hostname in all cases */
	*hostname = FUNC1(dev_name, len, GFP_KERNEL);
	if (!*hostname)
		goto out_nomem;

	/* kill possible hostname list: not supported */
	comma = FUNC2(*hostname, ',');
	if (comma != NULL) {
		if (comma == *hostname)
			goto out_bad_devname;
		*comma = '\0';
	}

	colon++;
	len = FUNC3(colon);
	if (len > maxpathlen)
		goto out_path;
	*export_path = FUNC1(colon, len, GFP_KERNEL);
	if (!*export_path)
		goto out_nomem;

	FUNC0(MOUNT, "NFS: MNTPATH: '%s'\n", *export_path);
	return 0;

out_bad_devname:
	FUNC0(MOUNT, "NFS: device name not in host:path format\n");
	return -EINVAL;

out_nomem:
	FUNC0(MOUNT, "NFS: not enough memory to parse device name\n");
	return -ENOMEM;

out_hostname:
	FUNC0(MOUNT, "NFS: server hostname too long\n");
	return -ENAMETOOLONG;

out_path:
	FUNC0(MOUNT, "NFS: export pathname too long\n");
	return -ENAMETOOLONG;
}