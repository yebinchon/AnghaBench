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
struct fd_dev {int /*<<< orphan*/  fbd_flags; int /*<<< orphan*/  fd_dev_size; int /*<<< orphan*/  fd_dev_name; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FBDF_HAS_PATH ; 
 int /*<<< orphan*/  FBDF_HAS_SIZE ; 
 int /*<<< orphan*/  FDBD_HAS_BUFFERED_IO_WCE ; 
 struct fd_dev* FUNC0 (struct se_device*) ; 
 int /*<<< orphan*/  FD_MAX_DEV_NAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_fd_buffered_io 130 
#define  Opt_fd_dev_name 129 
#define  Opt_fd_dev_size 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static ssize_t FUNC11(struct se_device *dev,
		const char *page, ssize_t count)
{
	struct fd_dev *fd_dev = FUNC0(dev);
	char *orig, *ptr, *arg_p, *opts;
	substring_t args[MAX_OPT_ARGS];
	int ret = 0, arg, token;

	opts = FUNC2(page, GFP_KERNEL);
	if (!opts)
		return -ENOMEM;

	orig = opts;

	while ((ptr = FUNC10(&opts, ",\n")) != NULL) {
		if (!*ptr)
			continue;

		token = FUNC6(ptr, tokens, args);
		switch (token) {
		case Opt_fd_dev_name:
			if (FUNC5(fd_dev->fd_dev_name, &args[0],
				FD_MAX_DEV_NAME) == 0) {
				ret = -EINVAL;
				break;
			}
			FUNC7("FILEIO: Referencing Path: %s\n",
					fd_dev->fd_dev_name);
			fd_dev->fbd_flags |= FBDF_HAS_PATH;
			break;
		case Opt_fd_dev_size:
			arg_p = FUNC4(&args[0]);
			if (!arg_p) {
				ret = -ENOMEM;
				break;
			}
			ret = FUNC9(arg_p, 0, &fd_dev->fd_dev_size);
			FUNC1(arg_p);
			if (ret < 0) {
				FUNC8("strict_strtoull() failed for"
						" fd_dev_size=\n");
				goto out;
			}
			FUNC7("FILEIO: Referencing Size: %llu"
					" bytes\n", fd_dev->fd_dev_size);
			fd_dev->fbd_flags |= FBDF_HAS_SIZE;
			break;
		case Opt_fd_buffered_io:
			FUNC3(args, &arg);
			if (arg != 1) {
				FUNC8("bogus fd_buffered_io=%d value\n", arg);
				ret = -EINVAL;
				goto out;
			}

			FUNC7("FILEIO: Using buffered I/O"
				" operations for struct fd_dev\n");

			fd_dev->fbd_flags |= FDBD_HAS_BUFFERED_IO_WCE;
			break;
		default:
			break;
		}
	}

out:
	FUNC1(orig);
	return (!ret) ? count : ret;
}