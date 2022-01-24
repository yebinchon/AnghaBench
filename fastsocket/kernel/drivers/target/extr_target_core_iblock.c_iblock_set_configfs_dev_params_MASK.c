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
typedef  int /*<<< orphan*/  substring_t ;
struct se_device {int dummy; } ;
struct iblock_dev {unsigned long ibd_udev_path; unsigned long ibd_readonly; int /*<<< orphan*/  ibd_flags; int /*<<< orphan*/  ibd_bd; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IBDF_HAS_UDEV_PATH ; 
 struct iblock_dev* FUNC0 (struct se_device*) ; 
 int MAX_OPT_ARGS ; 
#define  Opt_force 130 
#define  Opt_readonly 129 
#define  Opt_udev_path 128 
 int /*<<< orphan*/  SE_UDEV_PATH_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ,unsigned long*) ; 
 char* FUNC9 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static ssize_t FUNC10(struct se_device *dev,
		const char *page, ssize_t count)
{
	struct iblock_dev *ib_dev = FUNC0(dev);
	char *orig, *ptr, *arg_p, *opts;
	substring_t args[MAX_OPT_ARGS];
	int ret = 0, token;
	unsigned long tmp_readonly;

	opts = FUNC2(page, GFP_KERNEL);
	if (!opts)
		return -ENOMEM;

	orig = opts;

	while ((ptr = FUNC9(&opts, ",\n")) != NULL) {
		if (!*ptr)
			continue;

		token = FUNC5(ptr, tokens, args);
		switch (token) {
		case Opt_udev_path:
			if (ib_dev->ibd_bd) {
				FUNC7("Unable to set udev_path= while"
					" ib_dev->ibd_bd exists\n");
				ret = -EEXIST;
				goto out;
			}
			if (FUNC4(ib_dev->ibd_udev_path, &args[0],
				SE_UDEV_PATH_LEN) == 0) {
				ret = -EINVAL;
				break;
			}
			FUNC6("IBLOCK: Referencing UDEV path: %s\n",
					ib_dev->ibd_udev_path);
			ib_dev->ibd_flags |= IBDF_HAS_UDEV_PATH;
			break;
		case Opt_readonly:
			arg_p = FUNC3(&args[0]);
			if (!arg_p) {
				ret = -ENOMEM;
				break;
			}
			ret = FUNC8(arg_p, 0, &tmp_readonly);
			FUNC1(arg_p);
			if (ret < 0) {
				FUNC7("strict_strtoul() failed for"
						" readonly=\n");
				goto out;
			}
			ib_dev->ibd_readonly = tmp_readonly;
			FUNC6("IBLOCK: readonly: %d\n", ib_dev->ibd_readonly);
			break;
		case Opt_force:
			break;
		default:
			break;
		}
	}

out:
	FUNC1(orig);
	return (!ret) ? count : ret;
}