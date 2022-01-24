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
typedef  int u64 ;
typedef  int /*<<< orphan*/  substring_t ;
struct btrfs_fs_devices {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int BTRFS_FS_TREE_OBJECTID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_device 131 
#define  Opt_subvol 130 
#define  Opt_subvolid 129 
#define  Opt_subvolrootid 128 
 int FUNC0 (char*,int /*<<< orphan*/ ,void*,struct btrfs_fs_devices**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static int FUNC7(const char *options, fmode_t flags,
		void *holder, char **subvol_name, u64 *subvol_objectid,
		u64 *subvol_rootid, struct btrfs_fs_devices **fs_devices)
{
	substring_t args[MAX_OPT_ARGS];
	char *device_name, *opts, *orig, *p;
	int error = 0;
	int intarg;

	if (!options)
		return 0;

	/*
	 * strsep changes the string, duplicate it because parse_options
	 * gets called twice
	 */
	opts = FUNC2(options, GFP_KERNEL);
	if (!opts)
		return -ENOMEM;
	orig = opts;

	while ((p = FUNC6(&opts, ",")) != NULL) {
		int token;
		if (!*p)
			continue;

		token = FUNC5(p, tokens, args);
		switch (token) {
		case Opt_subvol:
			FUNC1(*subvol_name);
			*subvol_name = FUNC4(&args[0]);
			break;
		case Opt_subvolid:
			intarg = 0;
			error = FUNC3(&args[0], &intarg);
			if (!error) {
				/* we want the original fs_tree */
				if (!intarg)
					*subvol_objectid =
						BTRFS_FS_TREE_OBJECTID;
				else
					*subvol_objectid = intarg;
			}
			break;
		case Opt_subvolrootid:
			intarg = 0;
			error = FUNC3(&args[0], &intarg);
			if (!error) {
				/* we want the original fs_tree */
				if (!intarg)
					*subvol_rootid =
						BTRFS_FS_TREE_OBJECTID;
				else
					*subvol_rootid = intarg;
			}
			break;
		case Opt_device:
			device_name = FUNC4(&args[0]);
			if (!device_name) {
				error = -ENOMEM;
				goto out;
			}
			error = FUNC0(device_name,
					flags, holder, fs_devices);
			FUNC1(device_name);
			if (error)
				goto out;
			break;
		default:
			break;
		}
	}

out:
	FUNC1(orig);
	return error;
}